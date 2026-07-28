# Task-006 · Prompt 01

## Goal

Refactor the Trade Plan page to fully support the existing database
schema while maintaining backward compatibility.

------------------------------------------------------------------------

## Context

The database migration has already been completed.

Do **NOT** modify:

-   Database schema
-   Existing migrations
-   Table structure

Use the existing `plans` and `plan_signals` tables.

Signal integration is **out of scope** for this prompt.

------------------------------------------------------------------------

## Tasks

### 1. Update Plan Types

Update all frontend types/interfaces to match the current `plans`
schema.

Support all newly added fields.

------------------------------------------------------------------------

### 2. Update CRUD

Update all create/read/update logic.

Requirements:

-   Load every new field.
-   Save every new field.
-   Preserve backward compatibility.
-   Existing plans must continue to work.

------------------------------------------------------------------------

### 3. Refactor Trade Plan Page

Replace the current free-form layout with the following sections:

1.  Basic Information
2.  Thesis
3.  Trigger (UI placeholder only)
4.  Execution Plan
5.  Scenario Analysis
6.  Checklist
7.  Attachments

------------------------------------------------------------------------

### 4. Field Mapping

Basic Information

-   title
-   market
-   instrument
-   strategy
-   direction
-   status
-   start_date
-   end_date

Thesis

-   thesis
-   catalyst
-   risk_factors

Execution Plan

-   planned_position_pct
-   planned_stop_price
-   planned_target_price
-   invalidation

Scenario Analysis

-   bull_case
-   base_case
-   bear_case

Checklist

-   checklist

Attachments

-   screenshots

------------------------------------------------------------------------

### 5. Trigger

Do NOT implement Signal Library.

Only create a Trigger section that can be extended later.

No relationship logic.

No signal selector.

------------------------------------------------------------------------

### 6. UI Requirements

-   Keep the existing design language.
-   Prefer structured form inputs over large free-text areas.
-   Preserve responsive layout.
-   Do not remove existing functionality unrelated to Trade Plan.

------------------------------------------------------------------------

## Acceptance Criteria

-   Existing plans open successfully.
-   Existing data is preserved.
-   New fields can be edited.
-   New fields can be saved.
-   Trade Plan page is organized into the new sections.
-   No database changes.
-   No Signal Library integration.

------------------------------------------------------------------------

## Out of Scope

-   Signal binding
-   plan_signals CRUD
-   Playbook
-   Analytics
-   AI generation
-   Review module
