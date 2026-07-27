# Task-006 · Database Design

## Status

Frozen

------------------------------------------------------------------------

## Decisions

### plans

Keep

-   id
-   user_id
-   title
-   screenshots
-   created_at
-   updated_at
-   start_date
-   end_date

Deprecate

-   content

Add

-   market
-   instrument
-   strategy
-   direction
-   status
-   thesis
-   catalyst
-   risk_factors
-   planned_position_pct
-   planned_stop_price
-   planned_target_price
-   invalidation
-   bull_case
-   base_case
-   bear_case
-   checklist
-   trigger_deadline
-   review_date

------------------------------------------------------------------------

### plan_signals

New table.

Purpose

-   Many-to-Many
-   Plan ↔ Signal

Columns

-   id
-   plan_id
-   signal_id
-   user_id
-   created_at

Indexes

-   plan_id
-   signal_id
-   user_id

------------------------------------------------------------------------

## Data Rules

Store **Value** instead of **Label**.

Examples

``` text
market
- A_SHARE
- US
- HK
- CRYPTO

strategy
- GAP
- BREAKOUT
- TREND_FOLLOWING

direction
- LONG
- SHORT
```

------------------------------------------------------------------------

## Design Rules

-   Database First
-   Evolution over Rewrite
-   Normalize Relations
-   Structure Only Computable Data
-   Free Text for Reasoning

------------------------------------------------------------------------

## Migration

1.  Extend `plans`.
2.  Create `plan_signals`.
3.  Keep `content` temporarily.
4.  Migrate UI to new fields.
5.  Remove `content` in a future task.

------------------------------------------------------------------------

## Out of Scope

-   Playbook
-   Analytics
-   AI Generation
-   Signal Hierarchy
