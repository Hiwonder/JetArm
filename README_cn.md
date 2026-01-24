# JetArm

[English](https://github.com/Hiwonder/JetArm/blob/main/README.md) | 中文

<p align="center">
  <img src="./sources/images/jetarm.png" alt="JetArm Logo" width="600"/>
</p>

## 产品概述

JetArm是幻尔科技开发的AI驱动机械臂，专为NVIDIA Jetson平台设计。具备先进的视觉处理、ROS集成和智能控制系统，JetArm为AI机器人研究、教育和开发提供了强大的平台。

## 分支说明

本仓库包含六个分支，适用于不同的硬件和ROS版本：

### Jetson Nano
- **Jetson_nano_ros1** - 适用于NVIDIA Jetson Nano的ROS1版本
- **Jetson_nano_ros2** - 适用于NVIDIA Jetson Nano的ROS2版本

### Jetson Orin Nano
- **Jetson_Orin_ros1** - 适用于NVIDIA Jetson Orin Nano的ROS1版本
- **Jetson_Orin_ros2** - 适用于NVIDIA Jetson Orin Nano的ROS2版本

### Jetson Orin NX
- **Jetson_Orin_NX_ros1** - 适用于NVIDIA Jetson Orin NX的ROS1版本
- **Jetson_Orin_NX_ros2** - 适用于NVIDIA Jetson Orin NX的ROS2版本

## 官方资源

### 幻尔科技官方

- **官方网站**: [https://www.hiwonder.com/](https://www.hiwonder.com/)
- **产品页面**: [https://www.hiwonder.com/products/jetarm](https://www.hiwonder.com/products/jetarm)
- **官方文档**: [https://docs.hiwonder.com/projects/JetArm/en/latest/](https://docs.hiwonder.com/projects/JetArm/en/latest/)
- **技术支持**: support@hiwonder.com

## 核心功能

### AI视觉处理

- **深度学习集成** - 由NVIDIA Jetson GPU加速驱动
- **物体检测** - 实时物体识别和跟踪
- **视觉伺服** - 视觉引导的机械臂控制
- **图像处理** - 先进的计算机视觉算法

### ROS集成

- **ROS1/ROS2支持** - 兼容两个ROS版本
- **模块化架构** - 灵活可扩展的设计
- **标准接口** - ROS话题、服务和动作
- **仿真支持** - Gazebo和RViz集成

### 机械臂控制

- **逆运动学** - 精确的末端执行器定位
- **运动规划** - 无碰撞轨迹生成
- **夹爪控制** - 智能抓取功能
- **多自由度控制** - 多个自由度

### 硬件平台

- **Jetson Nano** - 入门级AI计算平台
- **Jetson Orin Nano** - 增强性能的高级AI计算
- **Jetson Orin NX** - 高性能AI计算平台
- **高精度舵机** - 准确可靠的运动控制
- **相机集成** - 内置视觉系统

## 快速开始

### 选择分支

根据您的硬件和ROS版本选择合适的分支：

```bash
# Jetson Nano + ROS1
git clone -b Jetson_nano_ros1 https://github.com/Hiwonder/JetArm.git

# Jetson Nano + ROS2
git clone -b Jetson_nano_ros2 https://github.com/Hiwonder/JetArm.git

# Jetson Orin Nano + ROS1
git clone -b Jetson_Orin_ros1 https://github.com/Hiwonder/JetArm.git

# Jetson Orin Nano + ROS2
git clone -b Jetson_Orin_ros2 https://github.com/Hiwonder/JetArm.git

# Jetson Orin NX + ROS1
git clone -b Jetson_Orin_NX_ros1 https://github.com/Hiwonder/JetArm.git

# Jetson Orin NX + ROS2
git clone -b Jetson_Orin_NX_ros2 https://github.com/Hiwonder/JetArm.git
```

### 安装

请参考所选分支中的README获取详细安装说明。

## 社区与支持

- **GitHub Issues**: 报告问题和请求功能
- **邮件支持**: support@hiwonder.com
- **文档资料**: 全面的指南和教程

## 许可证

本项目开源，可用于教育和研究目的。

---

**幻尔科技** - 赋能机器人教育创新
