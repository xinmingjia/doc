# Task-003 Architecture Design
# Decision Evaluation Framework

Version: Architecture Design v2

---

# 1. Goal

Build an independent Decision Evaluation Framework for evaluating trading decisions rather than trading results.

The framework provides a unified evaluation capability for the trading system and serves as the architectural foundation for future:

- Review
- Analytics
- AI Coach
- Performance Improvement

Task-003 focuses only on establishing the evaluation architecture and data foundation.

---

# 2. Scope

## Included

- Action Evaluation
- Trade Evaluation
- Evaluation Standard
- Evaluation Configuration
- Evaluation Data
- Evaluation CRUD
- Evaluation UI
- Evaluation Engine Framework (Reserved)

---

## Excluded

- Trade Result Calculation
- Review Evaluation
- Analytics Dashboard
- AI Automatic Scoring
- AI Coach
- Performance Statistics
- Recommendation Engine

---

# 3. Design Principles

## P1. Decision First

The framework evaluates decision quality rather than trading results.

Profit and loss are objective facts.

Evaluation represents subjective assessment.

The two must remain independent.

---

## P2. Fact & Evaluation Separation

Trade Domain stores facts.

Evaluation Domain stores evaluations.

Neither domain should contain data belonging to the other.

Trade data must never be modified by evaluation.

Evaluation data must never replace trade facts.

---

## P3. Raw Data First

All evaluation data is stored as raw records.

No derived result should overwrite original evaluation data.

Future statistics and analytics must always be reproducible from raw data.

---

## P4. Configuration First

The entire evaluation framework is configuration-driven.

Evaluation Categories and Evaluation Items are maintained through configuration.

Business logic must not hard-code evaluation standards.

---

## P5. Rule Versioning

Evaluation standards evolve over time.

Changes to future evaluation rules must never affect historical evaluation data.

Future versions should support independent rule version management.

Current Task reserves this capability.

---

# 4. System Architecture

```
Trade
│
├── Actions
│     │
│     └── Action Evaluation
│
└── Trade Evaluation
      │
      ▼
Evaluation Standard
      │
      ▼
Evaluation Engine (Future)
      │
      ▼
Analytics (Future)
      │
      ▼
Review (Future)
```

The architecture separates trading facts from evaluation data while reserving future expansion capability.

---

# 5. Domain Architecture

The system consists of four independent domains.

---

## Trade Domain

Responsible for storing objective trading facts.

Includes:

- Trading Plan
- Trade Information
- Trading Actions
- Market Context
- Evidence

Trade Domain never stores evaluation data.

---

## Action Domain

Responsible for recording every trading action.

Examples:

- Entry
- Add
- Reduce
- Exit

Each Action owns one Action Evaluation.

Relationship:

```
Action

↓

Action Evaluation
```

---

## Evaluation Domain

Responsible for storing all evaluation data.

Includes:

- Action Evaluation
- Trade Evaluation
- User Score
- Rich Text Notes

Future Reserved:

- System Score
- Final Score
- AI Score

Evaluation Domain never stores trading facts.

---

## Configuration Domain

Responsible for maintaining evaluation standards.

Includes:

- Evaluation Standard
- Categories
- Evaluation Items
- Configuration Status

The Configuration Domain is completely independent of evaluation data.

---

# 6. Evaluation Architecture

The framework consists of two completely independent evaluation systems.

---

## Action Evaluation

Purpose:

Evaluate execution quality for each trading action.

Evaluation target:

Trading skills during execution.

Each Action has exactly one Action Evaluation.

Evaluation begins immediately after an Action is completed.

---

## Trade Evaluation

Purpose:

Evaluate overall decision quality for an entire trade.

Evaluation target:

Trading decisions throughout the complete trade lifecycle.

Trade Evaluation is independent.

It is **not** calculated from Action Evaluations.

Users manually complete Trade Evaluation by reviewing both the trade and related Action Evaluations.

Future AI assistance may provide recommendations but must not replace user judgment.

---

# 7. Evaluation Standards

Two independent standards are maintained.

---

## Action Evaluation Standard

Used exclusively by Action Evaluation.

Evaluates execution quality.

Supports:

- Category Management
- Evaluation Item Management

---

## Trade Evaluation Standard

Used exclusively by Trade Evaluation.

Evaluates decision quality.

Supports:

- Category Management
- Evaluation Item Management

The two standards are maintained independently.

---

# 8. Lifecycle Design

## Action Evaluation Lifecycle

```
Action Created

↓

Action Completed

↓

Action Evaluation Available

↓

User Evaluation

↓

Save
```

Action Evaluation is intended to capture immediate reflection after execution.

---

## Trade Evaluation Lifecycle

```
Trade Created

↓

Trade Evaluation Available

↓

Continuous Editing

↓

Action Evaluations Accumulate

↓

User Reviews Trade

↓

Complete Final Evaluation

↓

Trade Closed
```

Trade Evaluation exists throughout the lifecycle of a trade.

It is not limited to post-trade review.

Users may continuously update decision reasoning as the trade evolves.

---

# 9. Data Flow

```
Trade

↓

Action

↓

Action Evaluation

↓

Trade Evaluation

↓

Evaluation Data

↓

Future Evaluation Engine

↓

Future Analytics

↓

Future Review

↓

Future AI Coach
```

The current task ends after Evaluation Data is successfully collected and stored.

All downstream capabilities are reserved for future implementation.

---

# 10. Evaluation Engine (Reserved)

Task-003 reserves the architecture of an Evaluation Engine.

Current version does not implement:

- Automatic Scoring
- Weight Calculation
- Recommendation
- AI Evaluation

Future responsibilities include:

- Generate evaluation forms from configuration
- Calculate derived scores
- Produce analytics
- Generate evaluation explanations
- Support AI-assisted evaluation

The Evaluation Engine stores no business data.

---

# 11. Configuration Strategy

Evaluation standards are fully configurable.

Users can manage:

## Category

- Create
- Update
- Disable

---

## Evaluation Item

- Create
- Update
- Disable

Physical deletion is discouraged to preserve historical compatibility.

Future versions may support:

- Rule Version
- Rule Change Log
- Configuration History

---

# 12. Extensibility

The architecture reserves expansion for future modules.

Phase 1

- Manual Evaluation
- Manual Decision Recording

---

Phase 2

- Structured Trading Plan
- Suggested Scores

---

Phase 3

- Evaluation Engine
- Analytics
- Statistics

---

Phase 4

- AI Coach
- Automatic Evaluation
- Continuous Performance Improvement

Task-003 completes only Phase 1 while ensuring all future phases can be added without redesigning the core architecture.

---

# 13. Language

Implementation language:

English

Including:

- Database
- API
- Backend
- Frontend
- Variable Names
- Components
- Prompts

Discussion, requirements analysis, design reviews and acceptance:

Chinese.
