# Decision Journal

## 系统架构（System Architecture）

> 技术架构文档（Technical Architecture Document）

---

版本：1.0

状态：Active（正式使用）

负责人：

- CTO（技术负责人）

更新时间：

2026-07-23


相关文档：

- 00_Project_Context.md
- 01_Development_Playbook.md
- 02_Product_Blueprint.md
- 04_Dictionary_Engine.md
- 05_Currency_Engine.md

---

# 目录

1. 文档目的
2. 架构设计目标
3. 系统整体架构
4. 系统分层设计
5. Engine 架构设计
6. Component 架构设计
7. 数据流设计
8. 核心业务对象关系
9. 数据库设计原则
10. 模块依赖规则
11. 架构扩展原则
12. 当前架构状态

---

# 1. 文档目的

本文档定义 Decision Journal 的技术架构。

主要描述：

- 系统如何组织
- 不同模块如何协作
- Engine 如何设计
- Component 如何复用
- 数据如何流转
- 未来如何扩展

本文档用于指导所有技术实现。

任何新的功能开发，都应该符合本文档定义的架构原则。

---

# 2. 架构设计目标

Decision Journal 的架构设计目标：

## 2.1 可维护性（Maintainability）

系统需要能够长期维护。

避免：

- 重复代码
- 模块混乱
- 页面承担过多逻辑

---

## 2.2 可扩展性（Scalability）

未来增加：

- 新功能
- 新分析维度
- 新数据来源

不应该导致整个系统重构。

---

## 2.3 高复用（Reusability）

公共能力应该被抽象。

例如：

DictionaryCombobox。

不应该为每个字段单独开发。

---

## 2.4 数据一致性（Data Consistency）

所有核心数据必须保持唯一来源。

避免：

不同页面保存不同版本的数据。

---

# 3. 系统整体架构

Decision Journal 采用分层架构（Layered Architecture）。

整体结构：

用户界面层（Presentation Layer）

↓

业务逻辑层（Business Layer）

↓

Engine 能力层（Engine Layer）

↓

数据存储层（Database Layer）

每一层负责不同职责。

---

# 4. 系统分层设计

# 4.1 用户界面层（Presentation Layer）

负责：

- 页面展示
- 用户输入
- 用户交互
- 数据展示

例如：

- 交易记录页面
- Dashboard 页面
- 复盘页面

---

原则：

页面只负责展示和交互。

不应该承担：

- 复杂业务逻辑
- 数据处理
- 数据分类管理

---

# 4.2 业务逻辑层（Business Layer）

负责：

具体业务流程。

例如：

- 创建交易
- 修改交易
- 完成交易
- 计算交易状态

---

业务层负责协调：

页面。

Engine。

数据库。

---

# 4.3 Engine 能力层（Engine Layer）

Engine 是整个系统的核心能力层。

负责提供：

可复用能力。

例如：

- Dictionary Engine
- Currency Engine
- Analytics Engine
- Review Engine
- AI Engine

---

Engine 不依赖具体页面。

任何页面都可以调用 Engine 提供的能力。

---

# 4.4 数据存储层（Database Layer）

负责：

永久数据保存。

例如：

- 交易数据
- 字典数据
- 汇率数据

---

数据库不负责：

- 页面逻辑
- 用户交互
- 复杂业务判断

---

# 5. Engine 架构设计

系统采用 Engine First（能力优先）设计方式。

---

## 5.1 Dictionary Engine

职责：

管理系统中的动态分类数据。

例如：

- 市场
- 交易品种
- 交易策略

核心原则：

Single Source of Truth（唯一数据来源）。

---

当前状态：

已完成。

---

## 5.2 Currency Engine

职责：

管理不同币种之间的转换。

包括：

- 汇率获取
- 汇率保存
- 人民币换算
- 历史汇率

状态：

规划中。

---

## 5.3 Analytics Engine

职责：

提供统计分析能力。

例如：

按照：

- 市场
- 交易品种
- 策略
- 时间

分析交易表现。

状态：

规划中。

---

## 5.4 Review Engine

职责：

管理交易复盘能力。

状态：

规划中。

---

## 5.5 AI Engine

职责：

提供人工智能分析能力。

包括：

- 自动总结
- 模式发现
- 建议生成

状态：

长期规划。

---

# 6. Component 架构设计

系统采用：

Reusable Component（可复用组件）

设计原则。

---

组件应该：

- 独立
- 通用
- 可复用

---

例如：

## DictionaryCombobox

用途：

所有 Dictionary 类型字段输入。

包括：

- 市场
- 交易品种
- 交易策略

---

禁止：

为每个字段创建：

MarketCombobox

StrategyCombobox

InstrumentCombobox

---

正确方式：

一个组件。

多个 Category。

---

# 7. 数据流设计

一次交易记录流程：
