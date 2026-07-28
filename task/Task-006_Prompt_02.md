# Task-006 · Prompt 02

## Goal

Integrate Trade Plan Trigger with the existing Signal Library.

------------------------------------------------------------------------

## Context

Prompt 01 has been completed.

Do **NOT** modify:

-   Database schema
-   Trade Plan layout
-   Existing CRUD unrelated to Trigger

Use the existing:

-   `signals`
-   `plan_signals`

tables.

------------------------------------------------------------------------

## Tasks

### 1. Trigger Selector

Replace the Trigger placeholder with a Signal selector.

Requirements:

-   Load signals for the current user.
-   Support multi-select.
-   Support searching by signal name.
-   Display selected signals.

### 2. Load Existing Relations

When opening a Trade Plan:

-   Load related signals.
-   Restore selected state.

### 3. Save Relations

When saving:

-   Create new `plan_signals`.
-   Remove deleted relations.
-   Prevent duplicates.
-   Keep relations synchronized.

### 4. Edit Support

Support:

-   Add signals
-   Remove signals
-   Preserve unchanged signals

### 5. UX

-   Keep existing design language.
-   Keep interaction simple.
-   Do not navigate away from the Trade Plan page.

------------------------------------------------------------------------

## Acceptance Criteria

-   Signals load correctly.
-   Multi-select works.
-   Existing selections are restored.
-   Saving updates `plan_signals`.
-   Duplicate bindings are prevented.
-   Existing Trade Plan functionality is not broken.

------------------------------------------------------------------------

## Out of Scope

-   Signal CRUD
-   Signal hierarchy
-   Analytics
-   Review integration
-   Playbook
-   AI recommendations
