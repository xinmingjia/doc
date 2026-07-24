# 01_Development_Playbook

> Development Process Constitution

Version: 1.1

Status: Active

Owner:

- Founder
- CTO

Related Documents:

- 00_Project_Context.md
- 02_Product_Blueprint.md
- 03_System_Architecture.md
- 06_Prompt_Guide.md

---

# 1. Purpose

This document defines the project's development workflow, collaboration model and engineering principles.

Goals:

- Build predictable development workflow.
- Maintain long-term architecture consistency.
- Minimize unnecessary rework.
- Ensure every Task produces stable value.

All feature development, bug fixes and architecture changes must follow this document.

---

# 2. Collaboration Model

Development follows:

Founder
↓

CTO
↓

AI Developer

Responsibilities are separated by role.

The Founder decides **what** to build.

The CTO decides **how** to build.

AI implements the approved solution.

---

# 3. Roles

## 3.1 Founder

Responsibilities:

- Define business problems.
- Describe real use cases.
- Prioritize requirements.
- Approve final delivery.

Founder does not design implementation.

---

## 3.2 CTO

Responsibilities:

- Product analysis
- Architecture
- Engine design
- Technical design
- Prompt design
- Documentation
- Quality review

CTO is responsible for system consistency.

---

## 3.3 AI Developer

AI Developer is an implementation tool.

Responsibilities:

- Implement approved tasks.
- Follow Prompt.
- Report implementation summary.

AI Developer must not:

- Redesign product
- Expand task scope
- Change architecture without approval

---

# 4. Standard Workflow

Every Task follows:

Requirement

↓

Product Discovery

↓

Requirement Confirmation

↓

Technical Design

↓

Prompt

↓

Implementation

↓

QA

↓

Task Closed

If delivery fails:

↓

Debug

↓

QA

↓

Closed

No Task skips any stage.

---

# 5. Product Discovery

Before development, every requirement must answer:

## 5.1 Why?

What real problem is being solved?

---

## 5.2 Value

Does it create long-term product value?

---

## 5.3 Capability

Should it become a reusable capability?

Prefer:

- Engine
- Shared Component
- Common Service

instead of duplicated implementation.

---

## 5.4 Future Analysis

Will today's design benefit future analytics or AI capability?

Long-term value should always be considered.

---

# 6. Technical Design

After requirement confirmation, CTO produces technical design.

Technical design includes:

- Architecture impact
- Data impact
- Engine impact
- Component impact
- Acceptance criteria

Implementation begins only after technical design is completed.

---

# 7. Product Language Policy

Communication

- Chinese

Documentation

- Chinese
- English technical terminology

Product UI

- English

Implementation

- English

Including:

- Code
- Variables
- Database
- API
- Components
- Prompt
- Naming

Language consistency is mandatory across the entire project.

---

# 8. Development Principles

## Principle 1

Design before implementation.

---

## Principle 2

One Task solves one problem.

---

## Principle 3

Capability-oriented development.

Prefer reusable capabilities over isolated implementations.

---

## Principle 4

Do not sacrifice long-term architecture for short-term delivery.

---

## Principle 5

Implementation follows approved design.

Development is execution, not redesign.

---

# 9. Quality Assurance

Every Task must pass QA before being closed.

QA verifies:

- Functional correctness
- Data correctness
- User experience
- Regression impact

A Task is complete only after QA passes.

---

# 10. Debug Principles

Debug aims to identify the root cause, not repeatedly modify code.

Recommended troubleshooting order:

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

Every Debug should clearly record:

- Problem
- Root Cause
- Solution
- Scope of Change

---

# 11. Task Lifecycle

Task Status:

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

If QA fails:

Development

↓

Debug

↓

QA

↓

Closed

Task status must always reflect the actual development stage.

---

# 12. Documentation Principles

Project documentation is the Single Source of Truth.

Rules:

- Chat discussions are temporary.
- Confirmed decisions must enter the Constitution or official project documents.
- Code and documentation must remain consistent.
- Major technical decisions must be recorded in the Decision Log.

Documentation is part of development, not post-development work.

---

# 13. Core Development Principles

1. Design before development.
2. Scope before implementation.
3. Capability before duplication.
4. Consistency before speed.
5. Product value before technical preference.
6. Documentation follows every important decision.
7. AI executes approved designs rather than creating new ones.

---

# Change History

| Version | Date | Owner | Description |
|----------|------------|----------------|----------------------------------------------|
| 1.0 | 2026-07-23 | Founder + CTO | Initial version |
| 1.1 | 2026-07-24 | Founder + CTO | Simplified structure, added Product Language Policy, unified development principles |

---

# Next Document

02_Product_Blueprint.md
