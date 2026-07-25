-- Task-003 Evaluation Seed Script
-- Version: v2
-- Purpose:
--   Initialize Evaluation Categories and Evaluation Criteria.
-- Notes:
--   1. Idempotent (safe to re-run)
--   2. Uses complete column lists
--   3. One configuration set per user
--
BEGIN;

--------------------------------------------------------------------
-- ACTION CATEGORIES
--------------------------------------------------------------------

INSERT INTO evaluation_categories
(user_id,name,description,status,sort_order,standard)
SELECT u.id,v.name,'','ACTIVE',v.sort_order,'ACTION'
FROM auth.users u
CROSS JOIN (
VALUES
('Execution',10),
('Planning',20),
('Risk Management',30),
('Psychology',40),
('Discipline',50),
('Market Reading',60)
) AS v(name,sort_order)
WHERE NOT EXISTS (
    SELECT 1
    FROM evaluation_categories c
    WHERE c.user_id=u.id
      AND c.standard='ACTION'
      AND c.name=v.name
);

--------------------------------------------------------------------
-- TRADE CATEGORIES
--------------------------------------------------------------------

INSERT INTO evaluation_categories
(user_id,name,description,status,sort_order,standard)
SELECT u.id,v.name,'','ACTIVE',v.sort_order,'TRADE'
FROM auth.users u
CROSS JOIN (
VALUES
('Decision Quality',10),
('Planning',20),
('Execution',30),
('Risk Management',40),
('Psychology',50),
('Trade Quality',60)
) AS v(name,sort_order)
WHERE NOT EXISTS (
    SELECT 1
    FROM evaluation_categories c
    WHERE c.user_id=u.id
      AND c.standard='TRADE'
      AND c.name=v.name
);

--------------------------------------------------------------------
-- ACTION CRITERIA
--------------------------------------------------------------------

WITH defs(category,name,sort_order) AS (
VALUES
('Execution','Entry Timing',10),
('Execution','Order Execution',20),
('Execution','Execution Consistency',30),

('Planning','Preparation',10),
('Planning','Plan Adherence',20),

('Risk Management','Position Size',10),
('Risk Management','Stop Loss',20),

('Psychology','Emotional Control',10),
('Psychology','Confidence',20),

('Discipline','Rule Compliance',10),
('Discipline','Patience',20),

('Market Reading','Market Context',10),
('Market Reading','Trend Recognition',20)
)
INSERT INTO evaluation_criteria
(user_id,category_id,level,name,description,evaluation_source,weight,status,sort_order)
SELECT
c.user_id,
c.id,
1,
d.name,
'',
'USER',
1,
'ACTIVE',
d.sort_order
FROM defs d
JOIN evaluation_categories c
ON c.standard='ACTION'
AND c.name=d.category
WHERE NOT EXISTS (
SELECT 1
FROM evaluation_criteria ec
WHERE ec.category_id=c.id
AND ec.name=d.name
);

--------------------------------------------------------------------
-- TRADE CRITERIA
--------------------------------------------------------------------

WITH defs(category,name,sort_order) AS (
VALUES
('Decision Quality','Why',10),
('Decision Quality','Thesis',20),
('Decision Quality','Trigger',30),
('Decision Quality','Plan',40),
('Decision Quality','Risk',50),
('Decision Quality','Macro Context',60),
('Decision Quality','Entry Decision',70),
('Decision Quality','Add Decision',80),
('Decision Quality','Reduce Decision',90),
('Decision Quality','Exit Decision',100)
)
INSERT INTO evaluation_criteria
(user_id,category_id,level,name,description,evaluation_source,weight,status,sort_order)
SELECT
c.user_id,
c.id,
1,
d.name,
'',
'USER',
1,
'ACTIVE',
d.sort_order
FROM defs d
JOIN evaluation_categories c
ON c.standard='TRADE'
AND c.name=d.category
WHERE NOT EXISTS (
SELECT 1
FROM evaluation_criteria ec
WHERE ec.category_id=c.id
AND ec.name=d.name
);

COMMIT;
