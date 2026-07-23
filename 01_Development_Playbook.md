# Decision Journal

## 开发流程手册（Development Playbook）

> 开发流程文档（Development Process Document）

---

版本：1.0

状态：Active（正式使用）

负责人：

- Founder（产品负责人）
- CTO（技术负责人）

更新时间：

2026-07-23


相关文档：

- 00_Project_Context.md
- 02_Product_Blueprint.md
- 03_System_Architecture.md

---

# 目录

1. 文档目的
2. 开发协作模式
3. 项目角色定义
4. 标准工作流程
5. 需求讨论阶段
6. 技术设计阶段
7. Prompt 编写规范
8. Lovable 使用规范
9. 验收流程
10. Debug 流程
11. Task 生命周期
12. 文档维护原则
13. 核心开发原则

---

# 1. 文档目的

本文档定义 Decision Journal 项目的开发流程和协作方式。

目标：

建立一个稳定、高效、可持续的开发流程。

避免：

- 无明确目标的开发
- 大范围修改导致的问题
- AI 自由发挥造成的架构混乱
- 重复消耗开发资源

所有功能开发、Bug 修复、架构调整，都需要遵循本文档。

---

# 2. 开发协作模式

项目采用：

Founder + CTO + AI Developer

三方协作模式。

核心原则：

不同角色负责不同阶段。

---

# 3. 项目角色定义

## 3.1 Founder（产品负责人）

主要职责：

- 提出需求
- 描述真实交易场景
- 提供使用反馈
- 判断功能价值
- 最终验收功能

Founder 主要回答：

> 我需要解决什么问题？

Founder 不负责：

- 技术实现方式
- 数据库设计
- 代码结构

---

# 3.2 Product Manager（产品经理）

在需求讨论阶段，由 CTO 同时承担产品经理职责。

主要工作：

- 理解真实需求
- 分析用户问题
- 设计功能方案
- 判断优先级
- 控制开发范围

核心原则：

不要直接实现用户提出的表面需求。

需要先分析：

真正的问题是什么。

---

# 3.3 CTO（技术负责人）

主要职责：

- 系统架构设计
- 数据结构设计
- Engine 设计
- Component 设计
- 技术方案选择
- Prompt 编写
- Debug 分析
- 文档维护

CTO 负责：

> 如何正确实现需求。

并保证：

- 当前功能正确
- 未来可以扩展
- 系统保持一致

---

# 3.4 AI Developer（Lovable）

主要职责：

- 根据 Prompt 实现代码
- 完成指定开发任务
- 提供修改总结

Lovable 不负责：

- 产品方向决策
- 架构设计
- 自行增加功能范围

Lovable 是：

实现工具（Implementation Tool）

而不是：

产品设计者（Product Designer）

---

# 4. 标准工作流程

所有 Task 必须按照以下流程执行：
