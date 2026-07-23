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

## 3.2 Product Manager（产品经理）

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

## 3.3 CTO（技术负责人）

主要职责：

- 系统架构设计
- 数据结构设计
- Engine 设计
- Component 设计
- 技术方案选择
- Prompt 编写
- Debug
- 文档维护

CTO 负责：

> 如何正确实现需求。

并保证：

- 当前功能正确
- 未来可以扩展
- 系统保持一致

---

## 3.4 AI Developer（Lovable）

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

需求提出

↓

需求讨论

↓

需求确认

↓

技术设计

↓

生成开发 Prompt

↓

Lovable 实现

↓

功能验收

↓

Task 结束

如果出现问题：

根据情况进入：

Bug Debug

或者：

需求重新设计。

---

# 5. 需求讨论阶段（Product Discovery）

这是每个 Task 的第一阶段。

此阶段：

CTO 兼任产品经理。

主要讨论：

- 做什么
- 为什么做
- 是否值得做

---

## 5.1 用户真正的问题是什么？

不能只关注：

用户提出的功能。

需要分析：

背后的业务需求。

---

## 5.2 这个功能是否具有长期价值？

考虑：

- 使用频率
- 分析价值
- 系统影响
- 后续扩展

---

## 5.3 是否应该抽象成公共能力？

如果多个地方未来都会使用。

应该设计：

Engine

或者：

Reusable Component（可复用组件）

---

## 5.4 是否影响未来分析？

新增字段需要考虑：

- 未来是否可以统计
- 未来 AI 是否可以利用

---

# 6. 技术设计阶段（Technical Design）

需求确认后。

CTO 进入技术设计阶段。

必须输出：

---

## 6.1 文档更新

根据需求更新：

- 产品文档
- 架构文档
- Engine 文档

---

## 6.2 Implementation Task

明确：

- 当前状态
- 开发目标
- 修改范围
- 技术要求
- 验收标准

---

## 6.3 Prompt

生成给 Lovable 使用的开发指令。

---

# 7. Prompt 编写规范

所有 Prompt 必须结构化。

固定包含：

---

## Context（背景）

说明：

当前系统状态。

---

## Objective（目标）

说明：

本次任务目标。

---

## Scope（范围）

明确：

允许修改什么。

禁止修改什么。

---

## Technical Requirements（技术要求）

指定：

实现方式。

避免 AI 自行选择错误方案。

---

## Acceptance Criteria（验收标准）

定义：

什么情况下算完成。

---

## Output Requirements（输出要求）

要求 Lovable 提供：

Change Summary（修改总结）。

包括：

- 修改文件
- 新增组件
- 数据库变化
- 影响范围

---

# 8. Lovable 使用规范

Lovable 开发必须遵守：

## 8.1 小范围修改

一次 Task 只解决一个明确问题。

---

## 8.2 禁止扩大范围

例如：

修改市场字段时：

不要同时修改：

- Currency
- Dashboard
- Analytics

除非 Task 明确要求。

---

## 8.3 优先复用已有能力

已有：

DictionaryCombobox

则禁止重新开发新的下拉组件。

---

# 9. 验收流程（QA）

开发完成后进入：

质量验证（Quality Assurance）。

---

验收包括：

## 功能验证

是否实现需求。

---

## 数据验证

数据是否正确保存。

---

## 交互验证

使用体验是否符合设计。

---

## 回归测试

已有功能是否受到影响。

---

验收结果：

通过：

Task Closed。

失败：

进入 Debug。

---

# 10. Debug 流程

Debug 的目标：

找到根本原因。

不是不断尝试修改。

---

Debug 顺序：

Database

↓

Data Source

↓

Store

↓

Hook

↓

Component

↓

Page

↓

UI

---

Debug 必须明确：

## 问题描述

发生了什么。

---

## 原因分析

为什么发生。

---

## 解决方案

如何修复。

---

## 修改范围

修改哪些内容。

---

# 11. Task 生命周期

每个 Task 状态：

Draft

↓

Requirement Confirmed

↓

Ready

↓

Development

↓

QA

↓

Closed

---

如果失败：

Development

↓

Debug

↓

QA

---

# 12. 文档维护原则

聊天记录不是正式项目资料。

最终确认的信息必须进入：

/docs

目录。

---

重要设计决定进入：

Decision Log（决策记录）。

---

代码变化必须与文档保持一致。

---

# 13. 核心开发原则

## 原则一

先设计，再开发。

---

## 原则二

一次只解决一个问题。

---

## 原则三

公共能力优先建设。

---

## 原则四

不要为了短期实现牺牲长期架构。

---

## 原则五

所有技术选择最终服务于产品价值。

---

# Change History

|版本|日期|负责人|说明|
|-|-|-|-|
|1.0|2026-07-23|Founder + CTO|初始版本|

---

# 下一文档

02_Product_Blueprint.md
