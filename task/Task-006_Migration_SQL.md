# Task-006 · Migration SQL

``` sql
-- =====================================================
-- Task-006 : Trade Plan Refactor v1
-- Migration v1
-- =====================================================

ALTER TABLE public.plans
ADD COLUMN IF NOT EXISTS market text,
ADD COLUMN IF NOT EXISTS instrument text,
ADD COLUMN IF NOT EXISTS strategy text,
ADD COLUMN IF NOT EXISTS direction text,
ADD COLUMN IF NOT EXISTS status text DEFAULT 'DRAFT',

ADD COLUMN IF NOT EXISTS thesis text,
ADD COLUMN IF NOT EXISTS catalyst text,
ADD COLUMN IF NOT EXISTS risk_factors text,

ADD COLUMN IF NOT EXISTS planned_position_pct numeric(5,2),
ADD COLUMN IF NOT EXISTS planned_stop_price numeric(20,8),
ADD COLUMN IF NOT EXISTS planned_target_price numeric(20,8),
ADD COLUMN IF NOT EXISTS invalidation text,

ADD COLUMN IF NOT EXISTS bull_case text,
ADD COLUMN IF NOT EXISTS base_case text,
ADD COLUMN IF NOT EXISTS bear_case text,

ADD COLUMN IF NOT EXISTS checklist jsonb DEFAULT '{}'::jsonb,

ADD COLUMN IF NOT EXISTS trigger_deadline date,
ADD COLUMN IF NOT EXISTS review_date date;

CREATE TABLE IF NOT EXISTS public.plan_signals (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    plan_id uuid NOT NULL REFERENCES public.plans(id) ON DELETE CASCADE,
    signal_id uuid NOT NULL REFERENCES public.signals(id) ON DELETE CASCADE,
    user_id uuid REFERENCES auth.users(id) ON DELETE CASCADE,
    created_at timestamptz NOT NULL DEFAULT now(),
    CONSTRAINT plan_signals_unique UNIQUE(plan_id, signal_id)
);

CREATE INDEX IF NOT EXISTS plan_signals_plan_id_idx
ON public.plan_signals(plan_id);

CREATE INDEX IF NOT EXISTS plan_signals_signal_id_idx
ON public.plan_signals(signal_id);

CREATE INDEX IF NOT EXISTS plan_signals_user_id_idx
ON public.plan_signals(user_id);
```

## Notes

-   Existing `content` column is retained for compatibility.
-   Dictionary-backed fields store values instead of labels.
-   `plan_signals` is the only new table in Task-006.
-   No existing user data is removed.
