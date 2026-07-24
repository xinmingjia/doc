# Decision Journal

## Prompt 编写指南（Prompt Guide）

> AI 开发规范文档（AI Development Standard Document）

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
- 03_System_Architecture.md

---

# 目录

1. 文档目的
2. Prompt 的定位
3. Prompt 基本原则
4. 标准 Prompt 结构
5. Context 编写规范
6. Objective 编写规范
7. Scope 编写规范
8. Technical Requirements 编写规范
9. Acceptance Criteria 编写规范
10. Output Requirements 编写规范
11. Lovable 使用注意事项
12. 常见错误
13. 标准 Prompt 模板

---

# 1. 文档目的

本文档定义 Decision Journal 项目中 AI 开发 Prompt 的编写标准。

由于项目主要使用 AI Developer（Lovable）进行代码实现，因此 Prompt 的质量直接影响：

- 开发准确性
- Credits 消耗
- 修改次数
- 功能稳定性
- 系统一致性

本文档用于保证：

每一次 AI 开发都有明确目标和边界。

---

# 2. Prompt 的定位

Prompt 不是简单的需求描述。

Prompt 是：

给 AI Developer 的技术开发说明书。

它应该明确：

- 当前系统状态
- 需要实现什么
- 不允许修改什么
- 如何判断完成

---

一个好的 Prompt：

减少 AI 自由判断。

增加实现确定性。

降低返工成本。

---

# 3. Prompt 基本原则

## 3.1 一个 Task 一个目标

每个 Prompt 只解决一个明确问题。

不要：

一次要求多个无关功能。

例如：

错误：

同时修改：

- 市场字段
- 汇率系统
- Dashboard

---

正确：

Task 001：

只修改市场字段。

Task 002：

只增加汇率转换。

---

# 3.2 明确当前状态

AI 需要知道：

现在系统是什么状态。

例如：

已经存在：

- Dictionary Engine
- DictionaryCombobox
- Trade Record 页面

不要让 AI 自己猜测。

---

# 3.3 明确修改范围

告诉 AI：

可以修改什么。

不能修改什么。

---

例如：

允许：

修改交易记录页面。

禁止：

修改 Dashboard。

禁止：

修改数据库结构。

除非明确要求。

---

# 3.4 优先使用已有架构

Prompt 中必须强调：

复用已有能力。

例如：

已有：

DictionaryCombobox。

禁止：

创建新的下拉组件。

---

# 4. 标准 Prompt 结构

所有 Prompt 固定包含以下部分：

---

## Context（背景）

说明：

当前系统状态。

包括：

- 已有功能
- 已有组件
- 当前问题

---

## Objective（目标）

说明：

本次 Task 要完成什么。

必须具体。

---

## Scope（范围）

说明：

允许修改内容。

以及：

禁止修改内容。

---

## Technical Requirements（技术要求）

说明：

实现必须遵守的技术规则。

包括：

- 组件复用
- 数据结构
- Engine 使用
- 命名规范

---

## Acceptance Criteria（验收标准）

定义：

完成后应该达到什么效果。

---

## Output Requirements（输出要求）

要求 AI 返回：

Change Summary（修改总结）。

包括：

- 修改文件
- 修改内容
- 新增组件
- 数据库变化
- 潜在风险

---

# 5. Context 编写规范

Context 需要回答：

当前系统在哪里。

---

包含：

## 项目状态

例如：

当前已经完成 Dictionary Engine。

---

## 相关模块

例如：

Trade Record 使用 DictionaryCombobox。

---

## 当前问题

例如：

市场字段无法保存用户新增选项。

---

避免：

只描述结果。

必须提供背景。

---

# 6. Objective 编写规范

Objective 必须：

明确。

单一。

可验证。

---

错误：

优化交易页面。

---

正确：

在 Trade Record 页面增加 Market Dictionary 输入功能，使用户可以选择已有市场，并保存新的市场分类。

---

# 7. Scope 编写规范

Scope 用于控制 AI 行为。

必须明确：

## 修改范围

例如：

允许：

- 修改 Trade Record Form
- 调用 Dictionary Engine

---

## 禁止范围

例如：

禁止：

- 修改 Dashboard
- 修改其他交易字段
- 重构数据库

---

# 8. Technical Requirements 编写规范

Technical Requirements 必须描述：

系统设计要求。

---

例如：

必须：

使用 DictionaryCombobox。

必须：

数据保存到 Dictionary。

必须：

保持现有交易记录结构。

禁止：

创建新的市场列表。

---

# 9. Acceptance Criteria 编写规范

验收标准必须：

用户可以验证。

---

例如：

成功标准：

- 新增交易记录时可以选择市场。
- 可以输入新的市场名称。
- 新市场自动保存。
- 下次新增交易时可以直接选择。
- 原有交易记录不受影响。

---

避免：

模糊描述。

例如：

“体验更好”。

---

# 10. Output Requirements 编写规范

要求 Lovable 完成后输出：

Change Summary。

格式：

## Modified Files

列出修改文件。

---

## Changes Made

说明修改内容。

---

## Database Changes

说明是否修改数据库。

---

## Risks

说明潜在影响。

---

# 11. Lovable 使用注意事项

## 11.1 不要一次发送过大需求

复杂功能应该拆分。

例如：

Currency Engine：

拆分：

1. 支持币种选择。

2. 获取汇率。

3. 人民币计算。

4. 历史汇率保存。

---

## 11.2 避免模糊语言

不要：

“帮我优化一下”。

应该：

“增加 XXX 字段，并保存到 XXX 表”。

---

## 11.3 不让 AI 做产品决策

Prompt 应告诉 AI：

实现方案。

而不是：

让 AI 自己设计。

---

# 12. 常见错误

## 错误一：

只描述需求，不描述系统状态。

结果：

AI 不知道如何接入。

---

## 错误二：

一次修改太多模块。

结果：

容易产生副作用。

---

## 错误三：

没有明确禁止修改范围。

结果：

AI 自行重构。

---

## 错误四：

没有验收标准。

结果：

无法判断是否完成。

---

# 13. 标准 Prompt 模板

Context:

当前系统状态：

相关模块：

已有能力：

当前问题：

Objective:

本次任务目标：

Scope:

允许修改：

禁止修改：

Technical Requirements:

Acceptance Criteria:

Output Requirements:

请输出：

* 修改文件
* 修改内容
* 数据库变化
* 风险说明

---

# Change History

|版本|日期|负责人|说明|
|-|-|-|-|
|1.0|2026-07-23|CTO|初始版本|

---

# 下一文档

07_Task_History.md
