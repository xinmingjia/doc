# Task-003 Technical Design
# Decision Evaluation Framework

---

# 1. Goal

建立独立的 Decision Evaluation Framework（决策评价框架）。

本系统评价的是 **Decision Quality（决策质量）**，而不是 **Trade Result（交易结果）**。

Evaluation 为交易系统提供统一的评价能力，并为未来的 Review、Analytics、AI Coach 提供基础数据。

---

# 2. Scope

## Included

- Action Evaluation
- Trade Evaluation
- Evaluation Engine
- Evaluation Configuration
- Evaluation Data

## Excluded

- Trade Result Calculation（Task-004）
- Review Evaluation（Task-005）
- AI 自动评分
- Analytics

---

# 3. Principles

### P1. Decision First

评价决策，不评价盈亏。

交易结果永远独立于评价结果。

---

### P2. Fact & Evaluation Separation

Trade 保存事实。

Evaluation 保存评价。

二者互不包含。

---

### P3. Raw Data First

所有评价原始数据永久保存。

任何统计结果均允许重新计算。

---

### P4. Configuration First

评价框架全部配置化。

评价项不得写死在数据库。

---

### P5. Rule Versioning

评价规则独立维护。

规则修改不得影响历史评价数据。

所有规则修改维护 Rule Change Log。

---

# 4. System Design

## System Structure

Trade

↓

Evaluation

↓

Evaluation Engine

↓

Derived Result

↓

Review（Future）

---

## Action Evaluation

评价单个交易动作。

支持：

- Entry
- Add
- Exit

评价内容：

- Execution Discipline
- Risk Control
- Timing Quality
- Emotional Stability

---

## Trade Evaluation

评价整笔交易。

评价内容：

- Decision Thesis
- Risk Design
- Trade Management
- Overall Decision

Trade Evaluation 独立完成。

不得由 Action Evaluation 聚合得到。

---

## Evaluation Engine

Evaluation Engine 负责：

- 根据配置生成评价项
- 根据规则计算最终评分
- 生成派生指标
- 生成评价解释

Evaluation Engine 不保存业务数据。

---

# 5. Data Design

## Trade Domain

保存交易事实。

包括：

- Trading Plan
- Trading Actions
- Market Context
- Evidence

---

## Evaluation Domain

保存评价数据。

包括：

- User Score
- System Score（Reserved）
- Final Score
- Evaluation Notes

Evaluation Domain 不保存交易事实。

---

## Configuration

评价框架采用配置驱动。

配置包括：

- Evaluation Category
- Evaluation Criterion
- Evaluation Source
- Status
- Weight

评价项仅允许：

- ACTIVE
- DRAFT
- DEPRECATED

禁止物理删除。

---

## Rule

Rule 不属于业务数据。

Rule Repository 独立维护。

Rule Change Log 记录：

- Version
- Change
- Reason

---

# 6. Future Extension

第一阶段：

用户完成全部评价。

第二阶段：

支持结构化 Trading Plan。

第三阶段：

Evaluation Engine 根据 Trading Plan 自动生成建议评分。

第四阶段：

AI Coach 根据 Evaluation 与 Review 提供持续改进建议。

本 Task 仅完成第一阶段，并为后续阶段预留扩展能力。
