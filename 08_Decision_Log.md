# Decision Journal

## 决策记录（Decision Log）

> 项目设计决策文档（Project Decision Document）

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
- 01_Development_Playbook.md
- 03_System_Architecture.md
- 07_Task_History.md

---

# 目录

1. 文档目的
2. Decision Log 定位
3. 决策记录原则
4. 决策分类
5. 决策记录模板
6. 已确认的重要决策
7. 未来维护方式

---

# 1. 文档目的

本文档用于记录 Decision Journal 项目中的重要设计决策。

项目开发过程中，会不断遇到：

- 产品方向选择
- 技术方案选择
- 架构设计选择
- 数据结构选择

这些决定会长期影响项目。

因此需要记录：

为什么这样设计。

为什么不选择其他方案。

未来遇到类似问题时，可以快速理解历史原因。

---

# 2. Decision Log 定位

Decision Log（决策记录）用于保存：

重要决定背后的原因。

它回答：

> 为什么选择这个方案？

---

与其他文档区别：

## Project Context

说明：

项目为什么存在。

---

## Product Blueprint

说明：

产品应该是什么。

---

## System Architecture

说明：

系统如何设计。

---

## Task History

说明：

实际完成了什么。

---

## Decision Log

说明：

为什么这样决定。

---

# 3. 决策记录原则

## 3.1 记录重要决定

不是所有修改都需要记录。

需要记录：

- 影响未来架构的决定
- 影响多个模块的决定
- 可能未来需要重新理解的决定

---

## 3.2 记录原因，而不仅是结果

错误：

选择 Dictionary Engine。

---

正确：

选择 Dictionary Engine，因为系统存在多个动态分类字段，需要统一管理并支持未来分析。

---

## 3.3 保留历史选择

即使未来修改方案。

旧决策仍然保留。

因为：

历史也是项目知识。

---

## 3.4 决策优先考虑长期价值

选择方案时：

优先考虑：

- 可维护性
- 可扩展性
- 数据一致性
- 长期收益

而不是：

短期开发速度。

---

# 4. 决策分类

## 4.1 Product Decision（产品决策）

涉及：

- 产品方向
- 功能范围
- 用户流程

例如：

是否加入某个功能。

---

## 4.2 Architecture Decision（架构决策）

涉及：

- 系统结构
- Engine 设计
- Component 设计

例如：

为什么采用 Engine 架构。

---

## 4.3 Data Decision（数据决策）

涉及：

- 数据结构
- 字段设计
- 数据来源

例如：

为什么市场字段使用 Dictionary。

---

## 4.4 Development Decision（开发决策）

涉及：

- 开发方式
- AI 使用方式
- 工作流程

例如：

为什么采用 Task 分阶段开发。

---

# 5. 决策记录模板

每个重要决策使用以下格式：

---

# Decision-XXX：决策名称

## 1. Date（日期）

记录日期。

---

## 2. Category（分类）

例如：

Product Decision

Architecture Decision

Data Decision

---

## 3. Context（背景）

说明：

当时遇到的问题。

---

## 4. Decision（决定）

说明：

最终选择。

---

## 5. Alternatives（备选方案）

说明：

考虑过哪些其他方案。

---

## 6. Reason（原因）

说明：

为什么选择当前方案。

---

## 7. Impact（影响）

说明：

对系统未来有什么影响。

---

# 6. 已确认的重要决策

---

# Decision-001：采用 Dictionary Engine 管理动态分类数据

## Date（日期）

2026-07-23

---

## Category（分类）

Architecture Decision

Data Decision

---

## Context（背景）

交易系统存在多个动态分类字段：

例如：

- 市场
- 交易品种
- 交易策略

如果每个页面单独维护：

会导致：

- 数据重复
- 分类不一致
- 后续统计困难

---

## Decision（决定）

建立 Dictionary Engine。

所有动态分类数据统一管理。

---

## Alternatives（备选方案）

方案一：

每个页面维护自己的选项。

方案二：

使用固定代码枚举。

方案三：

统一 Dictionary Engine。

---

## Reason（原因）

Dictionary Engine 可以：

- 支持用户新增
- 保持数据一致
- 支持未来分析
- 降低维护成本

---

## Impact（影响）

未来所有动态分类字段：

必须接入 Dictionary Engine。

---

# Decision-002：采用 Engine First 架构

## Date（日期）

2026-07-23

---

## Category（分类）

Architecture Decision

---

## Context（背景）

随着功能增加：

不同页面会需要相同能力。

如果直接开发页面功能：

容易产生重复代码。

---

## Decision（决定）

系统采用：

Engine First（能力优先）

设计方式。

---

## Alternatives（备选方案）

方案一：

页面优先开发。

方案二：

功能复制开发。

方案三：

先建立 Engine。

---

## Reason（原因）

Engine 可以：

- 提高复用
- 降低耦合
- 支持未来扩展

---

## Impact（影响）

新增功能优先考虑：

是否应该建立 Engine。

---

# Decision-003：采用 Founder + CTO + AI Developer 协作模式

## Date（日期）

2026-07-23

---

## Category（分类）

Development Decision

---

## Context（背景）

项目主要通过 AI 工具开发。

需要明确：

需求设计。

技术设计。

代码实现。

之间的责任。

---

## Decision（决定）

采用：

Founder

↓

CTO

↓

AI Developer

协作模式。

---

## Reason（原因）

避免：

- AI 自行决定产品方向
- 需求不明确导致返工
- 架构不一致

---

## Impact（影响）

所有开发必须经过：

需求确认。

技术设计。

Prompt。

验收。

---

# 7. 未来维护方式

重要设计决定需要及时记录。

维护流程：

发现重要决定

↓

创建 Decision Log

↓

更新相关文档

↓

继续开发

---

# Change History

|版本|日期|负责人|说明|
|-|-|-|-|
|1.0|2026-07-23|Founder + CTO|初始版本|

---

# 下一文档

09_Project_Status.md
