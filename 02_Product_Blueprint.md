、# 02_Product_Blueprint

> Product Constitution

Version: 1.1

Status: Active

Owner

- Founder
- CTO

Related Documents

- 00_Project_Context.md
- 01_Development_Playbook.md
- 03_System_Architecture.md

---

# 1. Purpose

This document defines the long-term product vision, business model and core product structure of Decision Journal.

It answers:

- What the product is.
- What problems it solves.
- How users use it.
- What core capabilities it provides.
- How it evolves over time.

All product decisions should remain consistent with this document.

---

# 2. Product Positioning

Decision Journal is a **Personal Trading Operating System**.

It is designed to improve trading decisions through structured recording, continuous review and long-term analytics.

The product focuses on **decision quality**, not merely trading results.

Traditional trading platforms focus on:

- Market
- Orders
- Positions
- Profit & Loss

Decision Journal focuses on:

- Decision
- Process
- Review
- Improvement

---

# 3. Product Principles

## 3.1 Structured Knowledge

Trading experience should become structured knowledge instead of personal memory.

---

## 3.2 Continuous Improvement

The product should continuously improve trading decisions through historical data.

Development should always strengthen the loop:

Record

↓

Review

↓

Analytics

↓

Improve

↓

Next Trade

---

## 3.3 Capability First

Features should become reusable product capabilities whenever possible.

---

## 3.4 Long-Term Thinking

Every feature should contribute to future analytics and AI capability.

---

## 3.5 Product Language

English is the default product language.

Applies to:

- Navigation
- Module names
- Page titles
- Business objects
- User-facing terminology

Documentation may include Chinese explanations.

Implementation follows the same naming.

---

# 4. User Journey

Decision Journal follows the complete trading lifecycle.

Idea

↓

Plan

↓

Execution

↓

Management

↓

Exit

↓

Review

↓

Analytics

↓

Improvement

↓

Next Idea

The product should support every stage consistently.

---

# 5. Trading Lifecycle

## 5.1 Idea

Capture market opportunities.

Includes:

- Observation
- Opportunity
- Initial thesis

---

## 5.2 Plan

Convert ideas into executable plans.

Includes:

- Direction
- Entry
- Risk
- Target
- Thesis

---

## 5.3 Execution

Record actual trades.

Includes:

- Buy
- Sell
- Price
- Quantity
- Currency
- Cost

---

## 5.4 Management

Track position changes.

Includes:

- Add
- Reduce
- Stop Loss
- Take Profit
- Adjustment

---

## 5.5 Exit

Complete the trade.

Calculate:

- Profit & Loss
- Return
- Holding Period

---

## 5.6 Review

Evaluate:

- Decision quality
- Execution quality
- Lessons learned

---

## 5.7 Analytics

Discover long-term patterns.

Examples:

- Strategy performance
- Market performance
- Time performance
- Risk performance

---

# 6. Product Modules

## Core Modules

### Trade Plan

Manage future trading ideas and plans.

Status

Planned

---

### Trade Record

Record completed trades.

Status

Core Module

Current development priority.

---

### Position Management

Manage position changes throughout a trade.

Status

Planned

---

### Review

Capture lessons, mistakes and improvements after each trade.

Status

Planned

---

### Dashboard

Present key trading metrics and performance.

Status

Planned

---

### Analytics

Analyze historical trading behavior across multiple dimensions.

Status

Planned

---

### AI Assistant

Transform historical data into actionable insights.

Future capabilities include:

- Automatic Review
- Pattern Discovery
- Trading Suggestions

Status

Long-term Vision

---

# 7. Core Business Objects

The product is built around the following business objects.

## Trade

A complete trading record.

---

## Trade Plan

A pre-trade plan.

---

## Position

Position changes during a trade.

---

## Review

Post-trade reflection and learning.

---

## Dictionary

Dynamic classification data.

Examples:

- Market
- Instrument
- Strategy

---

## Currency

Currency definitions and exchange rates.

---

# 8. Analytics Dimensions

The initial analytics model consists of three primary dimensions.

## Market

Answers:

> Where did I trade?

Examples:

- China A
- Hong Kong
- US
- Gold
- Forex

---

## Instrument

Answers:

> What did I trade?

Examples:

- Stock
- ETF
- Option
- Future
- Bond

---

## Strategy

Answers:

> Why did I trade?

Examples:

- Gap
- Trend
- Breakout
- Mean Reversion
- Arbitrage
- Event Driven

Future dimensions may include:

- Broker
- Account
- Sector
- Country

---

# 9. MVP Scope

## Phase 1

Build a reliable trading data foundation.

Includes:

- Trade Record
- Dictionary Engine
- Currency Engine
- Dashboard (Basic)

---

## Phase 2

Expand analytical capabilities.

Includes:

- Review
- Analytics

---

## Phase 3

Introduce AI capabilities.

Includes:

- AI Assistant
- Automatic Analysis
- Intelligent Suggestions

---

# 10. Product Roadmap

## Phase 1 — Data Foundation

Goal

Build reliable and structured trading data.

Core capabilities:

- Trade Recording
- Classification
- Currency Support

---

## Phase 2 — Analytics

Goal

Turn data into insights.

Core capabilities:

- Dashboard
- Analytics
- Review

---

## Phase 3 — Intelligence

Goal

Enable proactive decision support.

Core capabilities:

- AI Analysis
- Trading Suggestions
- Automatic Review

---

# 11. Current Product Status

Current Milestone

Dictionary Engine V2

Completed

- DictionaryCombobox
- Market Dictionary
- Instrument Dictionary
- Strategy Dictionary

Current Focus

Strengthen the trading data foundation before expanding analytical capabilities.

---

# Product Principles Summary

Every product decision should follow these principles.

1. Decision over Result.
2. Process over Outcome.
3. Review before Improvement.
4. Capability before Feature.
5. Consistency before Expansion.
6. English as the Product Language.
7. Long-term Value over Short-term Convenience.

---

# Change History

| Version | Date | Owner | Description |
|----------|------------|----------------|---------------------------------------------|
| 1.0 | 2026-07-23 | Founder + CTO | Initial version |
| 1.1 | 2026-07-24 | Founder + CTO | Simplified structure, unified product language, refined product principles |

---

# Next Document

03_System_Architecture.md
