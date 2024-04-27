# 介绍
本项目是**MOOC上NJU ICS课程5 x86模拟器PA项目代码**

完成情况: 
- [x] PA-1-1 ~ PA-3-1(Cache的模拟) 通过测试的代码都在分支`PA3_1_初始状态`中
- [x] PA-3-2(保护模式) 通过测试的代码都在分支`PA3-2初始状态`中
- [x] PA-3-3(分页机制) 通过测试的代码都在分支`PA3-3_初始状态`中
- [x] PA-4-1(异常和中断的响应-系统调用) 通过测试的代码都在分支`PA4-1_1_初始状态`中
- [x] PA-4-1(异常和中断的响应-时钟中断) 通过测试的代码都在分支`PA4-1_2_初始状态`中
- [x] PA-4-2(外设与IO-模拟串口) 通过测试的代码都在分支`PA4-2_1_初始状态`中
- [ ] 后续模拟硬盘, 因为在`nemu/src/monitor/expr.c`中计算表达式需要解析ELF,但是把ELF的地址写死成了位于`ram_disk`中, 暂时懒得修改。暂改的代码位于分支`PA4_new`中

***上传代码只是想给做PA作业的人一个参考.***

# 来源
本仓库是MOOC课程《计算机系统基础（五）：x86模拟器编程实践》的代码仓库

请先获取对应的实验手册再开展实验，实验手册地址：

* GitHub: http://github.com/ics-nju-wl/icspa-public-guide
* Gitee: https://gitee.com/wlicsnju/icspa-public-guide

本代码仓库及其镜像地址：


* GitHub: http://github.com/ics-nju-wl/icspa-public
* Gitee: https://gitee.com/wlicsnju/icspa-public
