# Decision Journal Project

## Development Playbook

Version: 1.0

Status: Active

Owner: CTO

Last Updated: 2026

---

# 1. Purpose

本文档定义整个项目的开发流程。

任何新功能开发、Bug 修复、架构调整，都必须遵循本手册。

所有参与者（Founder、CTO、AI Developer）均按照本文档协作。

---

# 2. Development Principles

整个项目遵循以下原则：

1. 需求优先（Requirement First）
2. 产品优先（Product First）
3. 架构优先（Architecture First）
4. 复用优先（Reuse First）
5. 文档优先（Documentation First）
6. 验收优先（Quality First）

任何情况下，都不得直接跳过产品设计进入开发。

---

# 3. Project Roles

## Founder

职责：

- 提出产品想法
- 分享交易经验
- 描述业务需求
- 决定产品方向
- 最终验收功能

Founder 不负责技术实现。

---

## Product Manager（PM）

职责：

- 分析需求
- 明确业务目标
- 拆分功能
- 定义业务规则
- 控制开发范围（Scope）

每个 Task 开始时，由 CTO 临时承担 Product Manager 角色。

---

## CTO

职责：

- 系统架构设计
- 数据库设计
- Component 设计
- Prompt 编写
- 技术文档维护
- QA
- Debug
- 长期演进规划

CTO 对系统一致性负责。

---

## AI Developer（Lovable）

职责：

- 根据 Prompt 实现代码
- 不主动修改产品设计
- 不扩大开发范围
- 输出 Change Summary

Lovable 不负责产品决策。

---

# 4. Standard Development Workflow

每一个 Task 必须严格按照以下流程。

────────────────────────────

Phase 1

Product Discovery

↓

需求讨论

↓

需求确认

────────────────────────────

Phase 2

Technical Design

↓

更新文档

↓

输出 Prompt

↓

输出 Checklist

────────────────────────────

Phase 3

Implementation

↓

Lovable 开发

────────────────────────────

Phase 4

QA

Founder 验收

────────────────────────────

Phase 5

结果

PASS

↓

Task Closed

BUG

↓

Debug

需求偏差

↓

回到 Product Discovery

---

任何 Task 都不能跳过 Phase。

---

# 5. Task Lifecycle

每一个 Task 必须经历：

Draft

↓

Requirement Confirmed

↓

Ready

↓

Implementation

↓

QA

↓

Closed

如果失败：

↓

Debug

↓

QA

↓

Closed

---

# 6. Product Discovery Rules

在需求讨论阶段：

CTO 必须首先思考：

1.

真正的问题是什么？

不是用户说什么，而是需要解决什么。

2.

有没有更好的产品方案？

3.

这个需求未来还能扩展吗？

4.

是不是应该抽象成 Engine？

5.

是不是应该抽象成 Component？

6.

未来 Dashboard 能统计什么？

7.

AI 能分析什么？

如果没有经过以上思考，不进入开发。

---

# 7. Technical Design Rules

需求确认后。

CTO 必须输出：

Current Status

Objective

Documentation Update

Implementation Prompt

Acceptance Checklist

不得直接输出 Prompt。

---

# 8. Prompt Standards

所有 Prompt 统一采用英文结构。

业务字段允许中文。

Prompt 固定包含：

Context

Objective

Business Rules

Scope

UI Requirements

Acceptance Criteria

Output Requirements

禁止：

模糊描述。

禁止：

扩大 Scope。

禁止：

自由发挥。

---

# 9. Documentation Rules

任何功能完成后。

必须同步更新：

相关文档。

如果设计发生变化。

必须先更新文档。

再继续开发。

文档始终优先于聊天记录。

---

# 10. QA Rules

Founder 负责最终验收。

CTO 提供 Checklist。

验收内容包括：

功能

交互

回归测试

组件复用

数据一致性

Scope 是否被突破

---

# 11. Debug Rules

只有 Founder 明确反馈：

存在 Bug。

才进入 Debug。

Debug 必须包括：

Bug Description

Root Cause

Solution

Modified Files

Regression Risk

不得直接重新生成整个 Prompt。

只修复当前问题。

---

# 12. Completion Criteria

只有满足以下条件。

Task 才算结束。

✓ 功能实现

✓ QA 通过

✓ 无重大 Bug

✓ 文档已同步

✓ Scope 未扩大

随后：

Task Status：

Closed

进入下一轮 Product Discovery。

---

# 13. Communication Rules

讨论产品时：

CTO 扮演 Product Manager。

需求确认后：

CTO 回归技术角色。

每个阶段只关注当前阶段的问题。

避免混合讨论。

---

# 14. Long-term Collaboration

项目开发采用持续迭代模式。

每完成一个 Task：

立即关闭。

重新开始下一轮需求讨论。

避免多个未完成 Task 并行。

保持系统稳定演进。

---

# 15. Core Philosophy

永远不要为了写代码而写代码。

所有开发都必须服务于：

产品价值

长期可维护性

数据分析能力

组件复用能力

系统一致性

这些原则高于任何单一功能需求。
