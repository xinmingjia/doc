# Decision Journal

## Dictionary Engine（字典引擎）

> Engine 设计文档（Engine Design Document）

---

版本：1.0

状态：Active（正式使用）

负责人：

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
2. Dictionary Engine 定位
3. 设计背景
4. 核心设计原则
5. 数据模型设计
6. Dictionary 工作流程
7. DictionaryCombobox 组件设计
8. 当前应用场景
9. 未来扩展方向
10. 当前实现状态

---

# 1. 文档目的

本文档定义 Decision Journal 中 Dictionary Engine（字典引擎）的设计原则、功能范围和实现方式。

Dictionary Engine 是整个系统的重要基础能力。

它负责管理系统中的动态分类数据。

本文档用于指导：

- 新增 Dictionary 类型字段
- 设计相关组件
- 保证数据统一
- 支持未来分析需求

---

# 2. Dictionary Engine 定位

Dictionary Engine 是系统统一管理动态选项的基础模块。

它解决的问题：

系统中存在大量需要用户选择或者输入的分类信息。

例如：

- 市场
- 交易品种
- 交易策略
- 券商
- 账户

这些数据具有共同特点：

- 会不断新增
- 需要保存历史记录
- 需要用于统计分析

因此不能由单个页面独立维护。

---

# 3. 设计背景

早期页面开发中，部分字段直接使用固定选项。

这种方式存在问题：

- 不方便新增
- 不同页面可能出现不同选项
- 无法形成统一统计
- 后期维护困难

例如：

交易记录页面中的市场字段。

如果：

页面 A 有：

A股

港股

美股

页面 B 又维护：

A股

美股

黄金

最终会产生数据不一致。

因此需要：

Single Source of Truth（唯一数据来源）。

---

# 4. 核心设计原则

## 4.1 单一数据来源（Single Source of Truth）

所有动态分类数据统一由 Dictionary Engine 管理。

页面不能自己维护选项。

---

## 4.2 用户输入优先

Dictionary 不应该限制用户。

用户可以输入新的分类。

系统负责：

保存。

复用。

统计。

---

## 4.3 动态扩展

新增分类不需要修改代码。

例如：

新增市场：

黄金

外汇

数字货币

只需要新增 Dictionary 数据。

---

## 4.4 支持未来分析

Dictionary 数据不仅用于输入。

还用于：

Dashboard。

Analytics。

AI 分析。

---

# 5. 数据模型设计

Dictionary 核心数据包括：

## Category（分类）

表示：

数据属于哪一种类型。

例如：

market

instrument

strategy

---

## Value（具体值）

表示：

用户选择或者输入的具体内容。

例如：

Market：

- A股
- 港股
- 美股

Instrument：

- ETF
- 股票
- 期权

Strategy：

- 跳空
- 趋势
- 突破

---

# 6. Dictionary 工作流程

用户新增交易记录：

↓

选择 Dictionary 字段

↓

查询已有选项

↓

如果存在：

直接选择

↓

如果不存在：

允许新增

↓

保存到 Dictionary

↓

以后自动出现

---

# 7. DictionaryCombobox 组件设计

DictionaryCombobox 是系统标准组件。

它负责：

- 查询已有 Dictionary 数据
- 展示下拉选择
- 支持搜索
- 支持新增
- 返回统一数据结构

---

设计原则：

不要创建：

MarketCombobox

StrategyCombobox

InstrumentCombobox

---

正确方式：

使用：

DictionaryCombobox

通过不同 Category 区分。

---

例如：

市场：

Category = market

交易品种：

Category = instrument

交易策略：

Category = strategy

---

# 8. 当前应用场景

目前 Dictionary Engine 已应用于：

## Market（市场）

例如：

- A股
- 港股
- 美股

---

## Instrument（交易品种）

例如：

- 股票
- ETF
- 期权
- 期货

---

## Strategy（交易策略）

例如：

- 跳空
- 趋势
- 突破

---

这些字段未来都会用于：

交易统计。

策略分析。

AI 复盘。

---

# 9. 未来扩展方向

未来可以扩展：

## Broker（券商）

记录使用的券商。

---

## Account（账户）

记录不同账户。

例如：

- 股票账户
- 期权账户
- 期货账户

---

## Sector（行业）

用于行业分析。

---

## Country（国家）

用于国家和市场分析。

---

新增任何 Dictionary 类型：

必须遵循：

统一数据来源。

统一组件。

统一分析。

---

# 10. 当前实现状态

当前版本：

Dictionary Engine V2

已完成：

- Dictionary 数据管理
- DictionaryCombobox 组件
- Market 分类
- Instrument 分类
- Strategy 分类

当前系统已经具备：

动态输入。

自动保存。

历史复用。

统一管理。

---

下一阶段：

Currency Engine（货币引擎）。

---

# Change History

|版本|日期|负责人|说明|
|-|-|-|-|
|1.0|2026-07-23|CTO|初始版本|

---

# 下一文档

05_Currency_Engine.md
