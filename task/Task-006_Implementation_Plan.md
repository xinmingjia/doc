# Task-006 · Implementation Plan

## Status

Ready

------------------------------------------------------------------------

## Goal

Refactor Trade Plan into a structured pre-trade decision workflow
without changing the overall project architecture.

------------------------------------------------------------------------

## Execution Order

### Step 1

Database

-   Apply migration
-   Verify new columns
-   Verify `plan_signals`

**Acceptance**

-   Migration succeeds
-   Existing data remains intact

------------------------------------------------------------------------

### Step 2

Data Layer

-   Update Plan model
-   Update CRUD
-   Support loading/saving `plan_signals`

**Acceptance**

-   New fields can be persisted
-   Signal relationships can be created and removed

------------------------------------------------------------------------

### Step 3

Trade Plan UI

Replace free-form layout with sections:

-   Basic Information
-   Thesis
-   Trigger
-   Execution
-   Scenario
-   Checklist
-   Attachments

**Acceptance**

-   Existing plans open correctly
-   New plans can edit all new fields

------------------------------------------------------------------------

### Step 4

Signal Integration

-   Trigger selects from Signal Library
-   Support multiple signals
-   Persist to `plan_signals`

**Acceptance**

-   Multi-select works
-   Duplicate bindings prevented

------------------------------------------------------------------------

### Step 5

Validation

Validate:

-   Required fields
-   Numeric inputs
-   Date fields

**Acceptance**

-   Invalid data cannot be submitted

------------------------------------------------------------------------

## Risks

-   Preserve backward compatibility
-   Do not break existing Plan pages
-   Do not migrate historical `content` automatically

------------------------------------------------------------------------

## Out of Scope

-   Playbook
-   Analytics
-   AI Assistance
-   Auto-generated Plans
-   Review Refactor

------------------------------------------------------------------------

## Completion Criteria

Task-006 is complete when:

-   Database migration applied
-   Structured Plan page available
-   Signal binding functional
-   Existing data preserved
-   All acceptance criteria passed
