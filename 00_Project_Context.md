# Decision Journal Project

## Project Context

Version: 1.0

Status: Active

Owner: Founder + CTO

Last Updated: 2026。07.23

这是整个项目最重要的一份文档。

以后无论是谁接手项目，我都会建议他先读这一份，再读其他文档。

---

# 1. Project Vision

Decision Journal 并不是一个普通的交易记录软件。

它的目标是成为一个完整的 Personal Trading Operating System（个人交易操作系统）。

系统不仅用于记录交易，更重要的是帮助交易者持续改进交易决策，提高长期收益。

所有功能都围绕一个核心理念展开：

> Every trade is a decision.
> Every decision can be analyzed.
> Every analysis should improve future decisions.

交易记录只是开始。

真正重要的是形成一个能够持续学习、持续优化、持续复盘的交易系统。

---

# 2. Project Goals

本项目长期目标：

1. 建立统一的交易数据库。

2. 建立完整交易生命周期。

包括：

交易计划

↓

执行交易

↓

交易记录

↓

复盘

↓

统计分析

↓

AI总结

↓

优化下一次交易

形成完整闭环。

---

# 3. Design Philosophy

整个系统遵循以下原则。

## 3.1 Data First

所有统计必须来自真实数据。

任何统计都不能依赖人工整理。

所有数据只记录一次。

以后全部自动统计。

---

## 3.2 Single Source of Truth

任何一种数据只能有一个来源。

例如：

Dictionary

就是所有动态选项的唯一来源。

以后任何页面都不能维护自己的下拉数据。

---

## 3.3 Reusable First

所有组件优先复用。

禁止为了方便复制组件。

例如：

DictionaryCombobox

以后必须服务于：

市场

交易品种

交易策略

以及未来所有 Dictionary 类型。

---

## 3.4 Analytics Driven

每增加一个字段，都必须考虑：

未来可以统计什么？

未来AI可以分析什么？

如果不能产生分析价值，则不应轻易增加字段。

---

## 3.5 Long-term Maintainability

任何设计都必须考虑：

半年以后是否还能维护。

一年以后是否还能扩展。

不能为了今天方便而牺牲未来。

---

# 4. Current Product Scope

目前系统主要包括以下模块。

## Trade Plan

记录交易计划。

包括：

交易想法

风险

目标

理由

等待执行。

---

## Trade Record

记录真实成交。

这是系统核心模块。

记录每一笔交易。

---

## Review

交易结束后的复盘。

分析：

为什么赚钱。

为什么亏钱。

哪里需要优化。

---

## Dashboard

所有统计中心。

例如：

胜率

收益率

盈亏比

平均持仓

平均盈利

平均亏损

等等。

---

## Analytics

多维度分析。

例如：

按照：

市场

交易品种

交易策略

时间

币种

进行统计。

---

## AI

未来通过AI分析：

交易行为

交易习惯

策略表现

帮助持续优化交易。

---

# 5. Core Dimensions

目前确定的分析维度。

## 市场（Market）

回答：

在哪里交易？

例如：

A股

港股

美股

黄金

数字货币

---

## 交易品种（Instrument）

回答：

交易什么？

例如：

股票

ETF

期权

期货

债券

---

## 交易策略（Strategy）

回答：

为什么交易？

例如：

跳空

趋势

突破

套利

均值回归

事件驱动

这是未来最重要的数据维度之一。

---

未来还可能扩展：

账户

券商

行业

国家

但暂不作为当前重点。

---

# 6. Engines

整个系统按照 Engine 管理。

目前已经确定：

Dictionary Engine

Currency Engine

Analytics Engine

Review Engine

Signal Engine

AI Engine

每个 Engine 独立设计。

彼此解耦。

---

# 7. UI Principles

所有面向用户的字段默认使用中文。

例如：

市场

交易品种

交易策略

而：

数据库分类

代码

Prompt

内部逻辑

统一使用英文。

例如：

market

instrument

strategy

保持技术规范统一。

---

# 8. Development Philosophy

项目采用：

Founder + CTO + AI Developer

协作模式。

Founder

负责：

产品方向

交易经验

需求确认。

CTO

负责：

产品设计

架构设计

数据库设计

Prompt

代码审查

质量保证。

AI Developer（Lovable）

负责：

实现需求。

不得自行改变产品设计。

---

# 9. Current Milestone

Milestone：

Dictionary Engine V2

已经完成：

✅ Professional DictionaryCombobox

✅ Market

✅ Instrument

✅ Strategy

Dictionary 已成为系统统一动态字典。

---

# 10. Long-term Vision

未来 Decision Journal 将不仅仅是一个交易记录工具。

而是一个：

Personal Trading Operating System。

所有交易、

所有复盘、

所有统计、

所有AI分析、

最终都服务于一个目标：

持续提升交易决策质量。
