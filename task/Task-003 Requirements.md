# Task-003 Requirements
# Decision Evaluation Framework

Version: Requirements Freeze v1

---

# 1. Goal

Build a complete Decision Evaluation Framework to evaluate the quality of trading decisions rather than evaluating only profit and loss.

The framework serves as the foundation for future:

- Review
- Statistics
- Analytics
- AI Analysis
- Performance Improvement

This task focuses only on evaluation data collection and management.

---

# 2. Evaluation Hierarchy

The framework contains two completely independent evaluation systems.

## 2.1 Action Evaluation

Evaluate every trading action.

Examples:

- Entry
- Add
- Reduce
- Exit

Each Action owns one Action Evaluation.

Relationship:

Action

↓

Action Evaluation

---

## 2.2 Trade Evaluation

Evaluate the entire trade.

Each Trade owns one Trade Evaluation.

Relationship:

Trade

↓

Trade Evaluation

Action Evaluation and Trade Evaluation are independent.

They maintain different evaluation standards.

---

# 3. Evaluation Standards

The system maintains two independent Evaluation Standards.

## Action Evaluation Standard

Used by Action Evaluation.

Contains:

- Categories
- Evaluation Items

---

## Trade Evaluation Standard

Used by Trade Evaluation.

Contains:

- Categories
- Evaluation Items

The two standards are maintained independently because their evaluation objectives are different.

---

# 4. Action Evaluation

Action Evaluation evaluates execution quality.

Its purpose is evaluating trading skills during execution.

---

## Category

### Execution

Evaluation Items:

- Entry Timing
- Entry Quality
- Order Execution
- Position Size
- Add Execution
- Reduce Execution
- Exit Execution

---

### Planning

Evaluation Items:

- Trade Plan Quality
- Entry Plan
- Exit Plan
- Scenario Preparation
- Risk / Reward Planning

---

### Risk Management

Evaluation Items:

- Initial Risk
- Stop Loss
- Position Sizing
- Risk Control
- Capital Allocation

---

### Psychology

Evaluation Items:

- Fear
- Greed
- FOMO
- Revenge Trading
- Emotional Stability
- Confidence

---

### Discipline

Evaluation Items:

- Follow Trading Plan
- Follow Rules
- Patience
- Consistency
- Impulse Control

---

### Market Reading

Evaluation Items:

- Trend Recognition
- Context Understanding
- Timing
- Market Structure

---

# 5. Trade Evaluation

Trade Evaluation evaluates decision quality.

Its purpose is evaluating the reasoning behind an entire trade.

---

## Category

### Decision Quality

Evaluation Items:

- Why
- Thesis
- Trigger
- Plan
- Risk
- Macro Context
- Entry Decision
- Add Decision
- Reduce Decision
- Exit Decision

---

### Planning

Evaluation Items:

- Overall Planning
- Preparation
- Scenario Design

---

### Execution

Evaluation Items:

- Overall Execution
- Decision Quality
- Consistency

---

### Risk Management

Evaluation Items:

- Overall Risk Control
- Drawdown Control
- Position Management

---

### Psychology

Evaluation Items:

- Emotional Stability
- Confidence
- Discipline

---

### Trade Quality

Evaluation Items:

- Expectancy
- Edge Quality
- Trade Quality

---

# 6. Evaluation Item Structure

Every Evaluation Item contains at least:

- Name
- Description (Optional)
- Score
- Note

---

## Score

- Range: 0–100
- Input Method: Slider

---

## Note

Support Rich Text.

Used for recording detailed evaluation and reasoning.

---

# 7. Evaluation Standard Management

Evaluation Standards are user-maintained.

Users can:

## Category

- Create
- Update
- Delete

---

## Evaluation Item

- Create
- Update
- Delete

The framework must not hard-code evaluation standards.

---

# 8. CRUD

## Action Evaluation

Support:

- Create
- Read
- Update

Current version:

Delete is not required.

---

## Trade Evaluation

Support:

- Create
- Read
- Update

Current version:

Delete is not required.

---

# 9. Lifecycle

## Action Evaluation Lifecycle

When an Action is created:

↓

Action Evaluation becomes available immediately.

Users evaluate each action immediately after execution.

---

## Trade Evaluation Lifecycle

Trade Evaluation is **not** created only after the trade is closed.

Instead:

Trade Created

↓

Trade Evaluation becomes available immediately

↓

Continuously updated during the trade lifecycle

↓

Trade Closed

↓

Complete final evaluation

Trade Evaluation records the decision-making process throughout the trade rather than only post-trade review.

---

# 10. User Interface

## Action Evaluation UI

Must support:

- Open Evaluation
- Display Categories
- Display Evaluation Items
- Edit Score
- Edit Rich Text Note
- Save
- Load Existing Data

---

## Trade Evaluation UI

Must support:

- Open Evaluation at any time after Trade creation
- Display Categories
- Display Evaluation Items
- Edit Score
- Edit Rich Text Note
- Save
- Load Existing Data

---

# 11. Current Scope

This task includes:

- Action Evaluation
- Trade Evaluation
- Evaluation Standards
- Evaluation CRUD
- Evaluation UI
- Evaluation Data Structure

---

# 12. Out of Scope

Current task does NOT include:

- Statistics
- Analytics
- Dashboard
- AI Evaluation
- Automatic Scoring
- Weight Calculation
- Overall Score
- Review Engine

These will be implemented in future tasks.

---

# 13. Language

Project implementation language:

English

Including:

- Database
- Table
- Column
- Component
- Variable
- Type
- API
- Prompt

Project discussion, requirement analysis and acceptance:

Chinese.
