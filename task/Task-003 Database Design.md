# Task-003 Database Design
# Decision Evaluation Framework

Version: Database Design v1

---

# 1. Goal

This document defines the database model for the Decision Evaluation Framework.

The purpose is to establish a stable data structure that supports:

- Action Evaluation
- Trade Evaluation
- Future Analytics
- Future Review
- Future AI Coach

This document defines data models only.

It does not specify implementation details such as SQL, ORM, indexes or migrations.

---

# 2. Design Principles

## Independent Domains

The database is divided into independent domains.

- Trade Domain
- Action Domain
- Evaluation Domain
- Configuration Domain

Each domain has clear responsibilities.

---

## Separation of Facts and Evaluations

Trade-related tables store objective facts.

Evaluation-related tables store subjective evaluations.

These two domains must never contain each other's data.

---

## Configuration Driven

Evaluation standards must never be hard-coded.

All Categories and Evaluation Items are stored as configuration.

---

## Historical Consistency

Historical evaluation data must always remain valid.

Configuration records referenced by historical evaluations must never be physically deleted.

---

# 3. Database Domains

```
Trade Domain
│
├── Trade
│
└── Action
      │
      ▼
Evaluation Domain
│
├── Trade Evaluation
│
└── Action Evaluation
      │
      ▼
Configuration Domain
│
├── Evaluation Standard
├── Evaluation Category
└── Evaluation Item
```

---

# 4. Trade Domain

## Trade

Represents one complete trade.

Stores only factual information.

Examples:

- Symbol
- Direction
- Trading Plan
- Market Context
- Evidence
- Status

Trade never stores evaluation data.

---

## Action

Represents one trading action.

Examples:

- Entry
- Add
- Reduce
- Exit

Each Action belongs to exactly one Trade.

Relationship

```
Trade

↓

Actions (1:N)
```

---

# 5. Evaluation Domain

## Trade Evaluation

Represents evaluation for one Trade.

Relationship

```
Trade

↓

Trade Evaluation (1:1)
```

Trade Evaluation exists during the entire Trade lifecycle.

It is available immediately after Trade creation.

Users may continuously update it.

Trade Evaluation stores only evaluation data.

---

## Action Evaluation

Represents evaluation for one Action.

Relationship

```
Action

↓

Action Evaluation (1:1)
```

Action Evaluation becomes available immediately after the Action is completed.

Each Action owns exactly one Action Evaluation.

---

# 6. Configuration Domain

## Evaluation Standard

Represents one evaluation standard.

Examples:

- Action Evaluation Standard
- Trade Evaluation Standard

Relationship

```
Evaluation Standard

↓

Evaluation Categories
```

---

## Evaluation Category

Represents one evaluation category.

Examples:

Action Standard

- Execution
- Planning
- Psychology

Trade Standard

- Decision Quality
- Planning
- Risk Management

Relationship

```
Evaluation Category

↓

Evaluation Items
```

---

## Evaluation Item

Represents one configurable evaluation criterion.

Examples

Entry Timing

Risk

Trigger

Macro Context

Emotional Stability

Each Evaluation Item belongs to one Category.

---

# 7. Entity Relationships

```
Trade

├──────────────┐
│              │
│              ▼
│      Trade Evaluation
│
▼
Action (1:N)

│

▼

Action Evaluation

────────────────────────

Evaluation Standard

↓

Evaluation Category

↓

Evaluation Item
```

Evaluation data references configuration.

Configuration never references evaluation records.

---

# 8. Evaluation Structure

Every Evaluation consists of multiple Evaluation Items.

Each Evaluation Item stores:

- Score
- Rich Text Note

Future Reserved:

- System Score
- AI Score

---

# 9. Configuration Structure

Evaluation Standard

↓

Categories

↓

Evaluation Items

↓

Evaluation Forms

Evaluation forms are generated dynamically from configuration.

No evaluation form should be hard-coded.

---

# 10. Lifecycle

## Trade

```
Trade Created

↓

Trade Evaluation Available

↓

Trade Updated

↓

Trade Closed
```

---

## Action

```
Action Created

↓

Action Completed

↓

Action Evaluation Available

↓

Evaluation Saved
```

---

# 11. CRUD Strategy

## Trade

- Create
- Read
- Update

Physical Delete is not supported.

---

## Action

- Create
- Read
- Update

Physical Delete is not supported.

---

## Trade Evaluation

- Create
- Read
- Update

Physical Delete is not supported.

---

## Action Evaluation

- Create
- Read
- Update

Physical Delete is not supported.

---

## Evaluation Standard

- Create
- Read
- Update
- Disable

Physical Delete is not supported.

---

## Evaluation Category

- Create
- Read
- Update
- Disable

Physical Delete is not supported.

---

## Evaluation Item

- Create
- Read
- Update
- Disable

Physical Delete is not supported.

---

# 12. Reserved Fields

The following capabilities are reserved for future versions.

Evaluation

- System Score
- AI Score
- Final Score

Configuration

- Rule Version
- Change Log
- Weight
- Effective Date

Evaluation Engine

- Auto Evaluation
- Score Calculation
- Recommendation
- Explanation

These fields are intentionally excluded from the current implementation but should be considered during future schema evolution.

---

# 13. Current Scope

Task-003 database implementation includes only:

- Trade
- Action
- Trade Evaluation
- Action Evaluation
- Evaluation Standard
- Evaluation Category
- Evaluation Item

Future tables for Analytics, Review and AI are intentionally excluded from the current implementation.
