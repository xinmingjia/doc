# 03_System_Architecture

> Technical Architecture Constitution

Version: 1.1

Status: Active

Owner

- CTO

Related Documents

- 00_Project_Context.md
- 01_Development_Playbook.md
- 02_Product_Blueprint.md
- 04_Dictionary_Engine.md
- 05_Currency_Engine.md

---

# 1. Purpose

This document defines the long-term technical architecture of Decision Journal.

It specifies:

- System structure
- Layer responsibilities
- Engine architecture
- Component architecture
- Data flow
- Extension principles

All technical implementation must remain consistent with this architecture.

---

# 2. Architecture Goals

The architecture is designed around six principles.

## 2.1 Maintainability

The system should remain easy to understand and maintain.

Avoid:

- Duplicate logic
- Mixed responsibilities
- Overloaded pages

---

## 2.2 Scalability

New features, Engines and analytics should extend the system without major refactoring.

---

## 2.3 Reusability

Reusable capabilities should always be preferred over isolated implementations.

---

## 2.4 Data Consistency

Every core dataset has a single source of truth.

---

## 2.5 Capability First

Business capability is the primary architectural unit.

Pages consume capabilities.

Capabilities should not depend on pages.

---

## 2.6 Naming Consistency

Architecture, implementation and product should use consistent English naming.

Business objects, Engines, Components, APIs and UI modules should share the same terminology.

---

# 3. Overall Architecture

Decision Journal adopts a layered architecture.

Presentation Layer

↓

Business Layer

↓

Engine Layer

↓

Database Layer

Each layer owns a single responsibility.

---

# 4. Layer Design

## 4.1 Presentation Layer

Responsible for:

- UI
- User interaction
- Data presentation

Examples:

- Trade Record
- Dashboard
- Review

Presentation Layer should not contain business logic.

---

## 4.2 Business Layer

Responsible for coordinating business workflows.

Examples:

- Create Trade
- Update Trade
- Close Trade
- Calculate Trade State

Business Layer coordinates:

- Presentation
- Engine
- Database

It does not own reusable capabilities.

---

## 4.3 Engine Layer

The Engine Layer is the capability center of the system.

Every Engine provides reusable business capability.

Examples:

- Dictionary Engine
- Currency Engine
- Analytics Engine
- Review Engine
- AI Engine

Engines are independent of pages and may be shared by multiple modules.

---

## 4.4 Database Layer

Responsible for persistent storage.

Examples:

- Trade
- Dictionary
- Currency

The Database Layer stores data only.

It does not contain business logic.

---

# 5. Engine Architecture

Decision Journal adopts an **Engine First** architecture.

Reusable capability belongs to an Engine rather than an individual page.

## 5.1 Dictionary Engine

Responsibility

Manage dynamic classification data.

Examples:

- Market
- Instrument
- Strategy

Principle

Single Source of Truth.

Status

Completed.

---

## 5.2 Currency Engine

Responsibility

Manage currencies and exchange rates.

Includes:

- Exchange Rates
- Currency Conversion
- Historical Rates

Status

Planned.

---

## 5.3 Analytics Engine

Responsibility

Provide reusable analytics capability.

Support analysis by:

- Market
- Instrument
- Strategy
- Time

Status

Planned.

## 5.4 Review Engine

Responsibility

Provide reusable review capability.

Includes:

- Review Management
- Review Templates
- Improvement Records

Status

Planned.

---

## 5.5 AI Engine

Responsibility

Provide reusable AI capabilities across the system.

Includes:

- Automatic Review
- Pattern Discovery
- Insight Generation
- Trading Suggestions

Status

Long-term Vision.

---

# 6. Component Architecture

Decision Journal adopts a **Reusable Component** architecture.

Components should be:

- Independent
- Generic
- Reusable

A component represents reusable UI capability rather than business logic.

Business logic belongs to the Business Layer or an Engine.

---

## Example: DictionaryCombobox

Purpose

Provide a unified input component for Dictionary data.

Supports:

- Market
- Instrument
- Strategy

The component is configured through Dictionary categories.

Do not create dedicated components such as:

- MarketCombobox
- InstrumentCombobox
- StrategyCombobox

A single reusable component should serve all Dictionary categories.

---

# 7. Data Flow

Every user operation follows the same data flow.

Presentation Layer

↓

Business Layer

↓

Engine Layer

↓

Database Layer

↓

Business Layer

↓

Presentation Layer

Principles:

- Data flows in one direction.
- Business rules are executed in the Business Layer.
- Reusable capability is provided by the Engine Layer.
- The Database Layer stores data only.

---

# 8. Business Object Relationships

Core business objects should remain loosely coupled.

Trade

↓

Position

↓

Review

Trade Plan

↓

Trade

Dictionary

↓

Trade

Currency

↓

Trade

Business objects should communicate through defined interfaces rather than direct coupling whenever possible.

---

# 9. Database Principles

The database is the persistent storage layer.

Principles:

- Single Source of Truth
- Normalized core data
- Stable identifiers
- Clear ownership
- No duplicated business state

The database should never contain presentation logic.

---

# 10. Dependency Rules

Architecture dependencies must remain one-way.

Allowed:

Presentation

↓

Business

↓

Engine

↓

Database

Not Allowed:

- Engine → Presentation
- Database → Business
- Database → Presentation
- Component → Database

Lower layers must not depend on higher layers.

---

# 11. Extension Principles

New functionality should extend the architecture instead of modifying existing foundations.

Prefer:

- Add new Engines
- Add new Components
- Extend Business workflows
- Reuse existing capabilities

Avoid:

- Duplicating functionality
- Creating page-specific business logic
- Breaking established boundaries

Architecture evolution should preserve consistency.

---

# 12. Current Architecture Status

Current Milestone

Dictionary Engine V2

Completed

- DictionaryCombobox
- Market Dictionary
- Instrument Dictionary
- Strategy Dictionary

Current Focus

Continue building reusable Engines before expanding feature modules.

---

# Architecture Principles Summary

Every architectural decision should follow these principles.

1. Layered Architecture.
2. Engine First.
3. Capability over Implementation.
4. Single Responsibility.
5. Reusable Components.
6. Single Source of Truth.
7. One-way Dependencies.
8. English Naming Consistency.

---

# Change History

| Version | Date | Owner | Description |
|---------|------------|-------|-----------------------------------------------|
| 1.0 | 2026-07-23 | CTO | Initial version |
| 1.1 | 2026-07-24 | Founder + CTO | Unified terminology, strengthened architecture principles and naming consistency |

---

# Next Document

04_Dictionary_Engine.md
