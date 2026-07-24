# 04_Dictionary_Engine

> Engine Constitution

Version: 1.1

Status: Active

Owner

- CTO

Related Documents

- 00_Project_Context.md
- 02_Product_Blueprint.md
- 03_System_Architecture.md

---

# 1. Purpose

This document defines the responsibilities, principles and architecture of the Dictionary Engine.

The Dictionary Engine provides a reusable capability for managing dynamic classification data across the system.

It serves as the foundation for:

- Consistent data entry
- Shared business vocabulary
- Analytics
- AI capabilities

All Dictionary-related implementation should follow this document.

---

# 2. Position

Dictionary Engine is the centralized capability responsible for dynamic classification data.

Typical categories include:

- Market
- Instrument
- Strategy
- Broker
- Account

Dictionary data is shared by all modules.

No page owns Dictionary data.

---

# 3. Design Background

Many business objects require dynamic user-defined classifications.

Maintaining these values inside individual pages leads to:

- Duplicate options
- Inconsistent terminology
- Poor analytics
- Higher maintenance cost

Dictionary Engine centralizes these classifications into a reusable capability.

---

# 4. Core Principles

## 4.1 Single Source of Truth

Every Dictionary category has one authoritative data source.

Pages must never maintain their own option lists.

---

## 4.2 User Extensibility

Users may create new Dictionary values whenever appropriate.

The system is responsible for:

- Validation
- Storage
- Reuse
- Analytics

---

## 4.3 Dynamic Expansion

Adding a new Dictionary value must not require code changes.

Only Dictionary data changes.

---

## 4.4 Analytics Ready

Dictionary data is designed for:

- Dashboard
- Analytics
- AI Assistant

---

## 4.5 Naming Consistency

Dictionary categories use English naming across:

- UI
- Components
- Database
- API
- Business Objects

Documentation may include Chinese explanations.

---

# 5. Data Model

Dictionary Engine consists of two core concepts.

## Category

Defines the type of Dictionary.

Examples:

- market
- instrument
- strategy

---

## Value

Represents an individual Dictionary entry.

Examples

Market

- China A
- Hong Kong
- US

Instrument

- Stock
- ETF
- Option

Strategy

- Gap
- Trend
- Breakout

---

# 6. Dictionary Workflow

Every Dictionary operation follows the same workflow.

User Input

↓

DictionaryCombobox

↓

Lookup Existing Values

↓

Value Exists?

├── Yes → Select Existing Value
└── No → Create New Value

↓

Dictionary Engine

↓

Database

↓

Reusable Across the System

Principles:

- All Dictionary operations pass through the Dictionary Engine.
- Pages never write Dictionary data directly.
- Newly created values become immediately reusable.

---

# 7. DictionaryCombobox

DictionaryCombobox is the standard component for all Dictionary input.

Responsibilities:

- Load Dictionary values
- Search existing values
- Create new values
- Return a unified data structure

The component is configured by Category.

Examples:

Category = market

↓

Market Dictionary

Category = instrument

↓

Instrument Dictionary

Category = strategy

↓

Strategy Dictionary

Do not create page-specific components such as:

- MarketCombobox
- InstrumentCombobox
- StrategyCombobox

One reusable component should support every Dictionary category.

---

# 8. Current Use Cases

Dictionary Engine currently supports:

## Market

Examples:

- China A
- Hong Kong
- US

---

## Instrument

Examples:

- Stock
- ETF
- Option
- Future

---

## Strategy

Examples:

- Gap
- Trend
- Breakout

These Dictionary categories are shared by:

- Trade Record
- Dashboard
- Analytics
- AI Assistant

---

# 9. Future Extensions

The Dictionary Engine should continue expanding through new categories rather than new implementations.

Potential categories include:

- Broker
- Account
- Sector
- Country

Every new Dictionary category must follow the same principles:

- Single Source of Truth
- Shared Component
- Reusable Capability
- Analytics Ready

No architectural changes should be required.

---

# 10. Current Status

Current Version

Dictionary Engine V2

Completed

- Dictionary Management
- DictionaryCombobox
- Market Category
- Instrument Category
- Strategy Category

Current Focus

Continue expanding Dictionary categories while maintaining a single reusable implementation.

---

# Engine Principles Summary

Every Dictionary implementation should follow these principles.

1. Single Source of Truth.
2. User Extensibility.
3. Dynamic Expansion.
4. Reusable Capability.
5. Analytics Ready.
6. Naming Consistency.
7. Component Reuse.

---

# Change History

| Version | Date | Owner | Description |
|---------|------------|------|------------------------------------------------|
| 1.0 | 2026-07-23 | CTO | Initial version |
| 1.1 | 2026-07-24 | Founder + CTO | Unified Constitution format, added naming consistency, refined Engine principles |

---

# Next Document

05_Currency_Engine.md
