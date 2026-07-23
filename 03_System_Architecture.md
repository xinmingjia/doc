# Decision Journal Project

## System Architecture

Version: 1.0

Status: Active

Owner: CTO

Last Updated: 2026

---

# 1. Purpose

本文档定义整个 Decision Journal 的系统架构。

包括：

- 系统分层
- Engine 架构
- Component 架构
- Database 关系
- 数据流
- 设计原则

所有技术实现均应遵循本文档。

---

# 2. Architecture Goals

整个系统必须满足：

✓ 高复用

✓ 高可维护

✓ 易扩展

✓ 数据一致

✓ Engine 解耦

✓ UI 简洁

任何新的功能都不能破坏以上原则。

---

# 3. Overall Architecture

整个系统采用四层架构。

```

┌──────────────────────────────┐
Presentation Layer
(UI / Pages)
└─────────────┬────────────────┘
│
┌─────────────▼────────────────┐
Business Layer
(Trade Logic)
└─────────────┬────────────────┘
│
┌─────────────▼────────────────┐
Engine Layer
(Dictionary / Currency / Analytics ...)
└─────────────┬────────────────┘
│
┌─────────────▼────────────────┐
Database Layer
(Supabase)
└──────────────────────────────┘
