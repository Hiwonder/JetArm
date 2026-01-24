#!/usr/bin/python3
#coding=utf8

# 通过深度图识别物体的外形进行分类(classify objects based on their shapes recognized through the depth map)
# 可以识别长方体，球，圆柱体(it can recognize cuboids, spheres, and cylinders)


import cv2
import rospy
import numpy as np
import message_filters
from sensor_msgs.msg import Image as RosImage
from std_srvs.srv import SetBool
from vision_utils import fps
import threading
import queue
from hiwonder_interfaces.msg import MultiRawIdPosDur
from jetarm_sdk import pid, bus_servo_control, sdk_client, tone
from jetarm_sdk.servo_controller import action_group_controller as actiongroup



class RgbDepthImageNode:
    def __init__(self):
        rospy.init_node('shape_recognition', anonymous=True)
        self.fps = fps.FPS()
        self.last_shape = "none"
        self.moving = False
        self.count = 0
        self.sdk = sdk_client.JetArmSDKClient()

        self.servos_pub = rospy.Publisher('/controllers/multi_id_pos_dur', MultiRawIdPosDur, queue_size=1)
        rospy.sleep(3)
        bus_servo_control.set_servos(self.servos_pub, 1000, ((1, 500), (2, 740), (3, 100), (4, 260), (5, 500), (10, 200)))
        rospy.sleep(2)
        
        rospy.wait_for_service('/rgbd_cam/set_ldp')
        rospy.ServiceProxy('/rgbd_cam/set_ldp', SetBool)(False)
        
        rgb_sub = message_filters.Subscriber('/rgbd_cam/color/image_raw', RosImage, queue_size=1)
        depth_sub = message_filters.Subscriber('/rgbd_cam/depth/image_raw', RosImage, queue_size=1)
    
        # 同步时间戳, 时间允许有误差在0.03s(synchronize timestamps, allowing for a time error of up to 0.03 seconds)
        sync = message_filters.ApproximateTimeSynchronizer([rgb_sub, depth_sub], 2, 0.03)
        sync.registerCallback(self.multi_callback) #执行反馈函数(execute feedback function)
        self.queue = queue.Queue(maxsize=1)

    def move(self, shape):
        self.sdk.set_buzzer(int(tone.G4), 200, 100, 1) 
        rospy.sleep(2)
        bus_servo_control.set_servos(self.servos_pub, 1000, ((10, 600), ))
        rospy.sleep(1)
        if shape == "sphere":
            actiongroup.runAction("target_1")
        if shape == "cylinder":
            actiongroup.runAction("target_2")
        if shape == "square":
            actiongroup.runAction("target_3")
        bus_servo_control.set_servos(self.servos_pub, 1000, ((1, 500), (2, 740), (3, 100), (4, 260), (5, 500), (10, 200)))
        rospy.sleep(2)
        self.moving = False
    

    def multi_callback(self, ros_rgb_image, ros_depth_image):
        if self.queue.empty():
            self.queue.put_nowait((ros_rgb_image, ros_depth_image))

    def image_proc(self):
        ros_rgb_image, ros_depth_image = self.queue.get(block=True)
        try:
            rgb_image = np.ndarray(shape=(ros_rgb_image.height, ros_rgb_image.width, 3), dtype=np.uint8, buffer=ros_rgb_image.data)
            depth_image = np.ndarray(shape=(ros_depth_image.height, ros_depth_image.width), dtype=np.uint16, buffer=ros_depth_image.data)

            ih, iw = depth_image.shape[:2]

            depth = np.copy(depth_image).reshape((-1, ))
            depth[depth<=0] = 99999
            min_index = np.argmin(depth)
            min_y = min_index // iw
            min_x = min_index - min_y * iw

            min_dist = depth_image[min_y, min_x]
            sim_depth_image = np.clip(depth_image, 0, 2000).astype(np.float64) / 2000 * 255
            depth_image = np.where(depth_image > min_dist + 30, 0, depth_image)
            sim_depth_image_sort = np.clip(depth_image, 0, 2000).astype(np.float64) / 2000 * 255
            depth_gray = sim_depth_image_sort.astype(np.uint8)
            #depth_gray = cv2.GaussianBlur(depth_gray, (5, 5), 0)
            _, depth_bit = cv2.threshold(depth_gray, 1, 255, cv2.THRESH_BINARY)
            depth_bit = cv2.erode(depth_bit, np.ones((3, 3), np.uint8))
            depth_bit = cv2.dilate(depth_bit, np.ones((3, 3), np.uint8))
            depth_color_map = cv2.applyColorMap(sim_depth_image.astype(np.uint8), cv2.COLORMAP_JET)

            contours, hierarchy = cv2.findContours(depth_bit, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_NONE)
            shape = 'none'
            for obj in contours:
                area = cv2.contourArea(obj)
                if area < 2000 or self.moving is True:
                    continue
                cv2.drawContours(depth_color_map, obj, -1, (255, 255, 0), 4) # 绘制轮廓线(draw contour line)
                perimeter = cv2.arcLength(obj, True)  # 计算轮廓周长(calculate contour perimeter)
                approx = cv2.approxPolyDP(obj, 0.03 * perimeter, True) # 获取轮廓角点坐标(get contour angular point coordinates)
                cv2.drawContours(depth_color_map, approx, -1, (255, 0, 0), 4) # 绘制轮廓线(draw contour line)
                CornerNum = len(approx)

                x, y, w, h = cv2.boundingRect(approx)

                if CornerNum == 3: objType = "triangle"
                elif CornerNum == 4:
                    #if abs(min_x - (x + w / 2)) < w / 5 or abs(min_y - (y + h / 2)) < h / 5:
                    #    objType = "cylinder"
                    #else:
                    objType="square"
                elif CornerNum > 5:
                    if abs(min_x - (x + w / 2)) < w / 5 and  abs(min_y - (y + h / 2)) < h / 5:
                        objType = "sphere"
                    else:
                        objType = "cylinder"
                else: objType = "none"
                shape=objType
                cv2.rectangle(depth_color_map, (x, y), (x + w, y + h), (255, 255, 255), 2)
                cv2.putText(depth_color_map, objType, (x + w // 2, y + (h //2)), cv2.FONT_HERSHEY_COMPLEX, 0.6, (255, 255, 255), 1)
                break
                #if min_x > x and min_y > y and min_x < x +w and min_y < y + h:
                #    cv2.rectangle(depth_color_map, (x, y), (x + w, y + h), (255, 255, 255), 2)
                #    cv2.putText(depth_color_map, objType, (x + w // 2, y + (h //2)), cv2.FONT_HERSHEY_COMPLEX, 0.6, (255, 255, 255), 1)
                #    shape = objType
                #    break
            if self.last_shape == shape and shape != 'none':
                print(self.count)
                self.count += 1
            else:
                self.count = 0
            if self.count > 10:
                self.count = 0
                self.moving = True
                threading.Thread(target=self.move, args=(shape, )).start()
            self.last_shape = shape

            txt = 'Dist: {}mm'.format(depth_image[min_y, min_x])
            #cv2.circle(depth_color_map, (int(min_x), int(min_y)), 8, (32, 32, 32), -1)
            #cv2.circle(depth_color_map, (int(min_x), int(min_y)), 6, (255, 255, 255), -1)
            cv2.putText(depth_color_map, txt, (11, ih-20), cv2.FONT_HERSHEY_PLAIN, 2.0, (32, 32, 32), 6, cv2.LINE_AA)
            cv2.putText(depth_color_map, txt, (10, ih-20), cv2.FONT_HERSHEY_PLAIN, 2.0, (240, 240, 240), 2, cv2.LINE_AA)

            bgr_image = cv2.cvtColor(rgb_image[40:440, ], cv2.COLOR_RGB2BGR)
            #cv2.circle(bgr_image, (int(min_x), int(min_y)), 8, (32, 32, 32), -1)
            #cv2.circle(bgr_image, (int(min_x), int(min_y)), 6, (255, 255, 255), -1)
            cv2.putText(bgr_image, txt, (11, ih - 20), cv2.FONT_HERSHEY_PLAIN, 2.0, (32, 32, 32), 6, cv2.LINE_AA)
            cv2.putText(bgr_image, txt, (10, ih - 20), cv2.FONT_HERSHEY_PLAIN, 2.0, (240, 240, 240), 2, cv2.LINE_AA)

            self.fps.update()
            #bgr_image = self.fps.show_fps(bgr_image)
            result_image = np.concatenate([bgr_image, depth_color_map], axis=1)
            cv2.imshow("depth", result_image)
            # cv2.imshow("depth_gray", depth_bit)
            key = cv2.waitKey(1)
            if key != -1:
                rospy.signal_shutdown('shutdown1')

        except Exception as e:
            rospy.logerr('callback error:', str(e))


if __name__ == "__main__":
    print('''
    *********************************************
    *                                           *
    * 此程序需要订阅深度摄像头节点,开启前请确保(The depth camera node needs to be subscribed for this program, please ensure that before starting) *
    * 已开启摄像头节点, 通过rostopic list可查看(The camera node has been started, please check via rostopic list) *
    * 是否有usb_cam相关节点,成功运行可看到终端(Whether there are usb_cam related nodes, you can see the terminal if it runs successfully)  *
    * running ...                               *
    *                                           * 
    *********************************************
    ''')

    try:
        node = RgbDepthImageNode()
        while not rospy.is_shutdown():
            node.image_proc()
    except KeyboardInterrupt:
        rospy.loginfo("shutdown2")

