#!/usr/bin/env python3
# coding=utf-8

import os
import time
import rospy
import signal
import serial
import binascii
from std_srvs.srv import Trigger
from std_msgs.msg import String, Bool

class ASRNode:
    def __init__(self, name):
        rospy.init_node(name)
        
        self.wake_up = False
        #唤醒词 '小幻小幻/hello hiwonder'
        self.wake_up_agreement = 'aa550300fb'
        self.language = os.environ['ASR_LANGUAGE']
        if self.language == 'Chinese':
            self.receiving_agreement = {
                'aa550300fb': '唤醒成功(wake-up-success)',
                'aa550001fb': '开启颜色分拣',
                'aa550002fb': '关闭颜色分拣',
                'aa550003fb': '追踪红色',
                'aa550004fb': '追踪绿色',
                'aa550005fb': '追踪蓝色',
                'aa550006fb': '停止追踪',
                'aa550007fb': '分拣红色',
                'aa550008fb': '分拣绿色',
                'aa550009fb': '分拣蓝色',
                'aa55000afb': '移除高度异常目标',
                'aa55000bfb': '停止处理',
                'aa55000cfb': '开始按形状分拣物品',
                'aa55000dfb': '停止分拣',
                'aa55000efb': '开始垃圾分类',
                'aa55000ffb': '停止垃圾分类',
                'aa550010fb': '分拣三维空间内的红色目标',
                'aa550011fb': '分拣三维空间内的绿色目标',
                'aa550012fb': '分拣三维空间内的蓝色目标',
            }
        if self.language == 'English':
            self.receiving_agreement = {
                'aa550300fb': '唤醒成功(wake-up-success)',
                'aa550001fb': 'start color sorting',
                'aa550002fb': 'stop color sorting',
                'aa550003fb': 'track red object',
                'aa550004fb': 'track green object',
                'aa550005fb': 'track blue object',
                'aa550006fb': 'stop tracking',
                'aa550007fb': 'sorting red object',
                'aa550008fb': 'sorting green object',
                'aa550009fb': 'sorting blue object',
                'aa55000afb': 'remove abnormal height target',
                'aa55000bfb': 'stop processing',
                'aa55000cfb': 'start recognition',
                'aa55000dfb': 'stop recognition',
                'aa55000efb': 'start classification',
                'aa55000ffb': 'stop classification',
                'aa550010fb': 'sorting red targets in 3D space',
                'aa550011fb': 'sorting green targets in 3D space',
                'aa550012fb': 'sorting blue targets in 3D space',
            }
        self.control = rospy.Publisher('~voice_words', String, queue_size=1)

        self.ser = serial.Serial('/dev/ring_mic', 115200, timeout=1)

        print('\033[1;32mstart\033[0m')

        # 初始化计时器
        self.last_recognition_time = time.time()
        self.main()


    def main(self):
        while True:
            # 尝试读取所有数据（如果没有数据，则等待 timeout 时间后继续）
            data = self.ser.read(self.ser.in_waiting)  # 读取所有缓冲区中的数据
            if data:
                # 将字节数据解析为16进制字符串
                hex_data = binascii.hexlify(data).decode('utf-8')

                if not self.wake_up and hex_data == self.wake_up_agreement:
                    print('\033[1;32m唤醒成功(wake-up-success)\033[0m')
                    ward = '唤醒成功(wake-up-success)'
                    self.wake_up = True
                    self.last_recognition_time = time.time()  # 唤醒成功后重置计时器
                    count_msg = String()
                    count_msg.data = ward
                    self.control.publish(count_msg)

                elif self.wake_up:
                    # 如果已经识别到唤醒词，则继续进行其他词条的识别
                    if hex_data in self.receiving_agreement:
                        ward = self.receiving_agreement[hex_data]
                        print('\033[1;32m%s\033[0m' % ward)
                        self.wake_up = False  # 识别完关键词后，重置唤醒标志
                        self.last_recognition_time = time.time()  # 识别到词语时重置计时器
                        count_msg = String()
                        count_msg.data = ward
                        self.control.publish(count_msg)


            # 如果在 5 秒内没有识别到关键词，打印提示信息
            if self.wake_up and (time.time() - self.last_recognition_time > 5):
                print('\033[1;32m没有识别到关键词，请再说一遍\033[0m')
                self.last_recognition_time = time.time()  # 重置计时器，避免重复输出


if __name__ == "__main__":
    ASRNode('asr_node')

