/*
=========================================================
PROJECT : Paper Leak Analysis in India (2004–2026)
DATABASE: PostgreSQL
TOOLS   : PostgreSQL, Python, Power BI

DESCRIPTION:
This SQL script contains business-oriented SQL queries
used to analyze paper leak incidents across India.
=========================================================
*/


/*
=========================================================
SECTION 0 : DATABASE SETUP
=========================================================
*/

-- Drop existing table (if it exists)

DROP TABLE IF EXISTS paper_leaks;


-- Create paper_leaks table

CREATE TABLE paper_leaks (
    incident_id TEXT PRIMARY KEY,
    date DATE,
    era TEXT,
    exam_name TEXT,
    conducting_body TEXT,
    body_type TEXT,
    area TEXT,
    leak_status TEXT,
    action_taken TEXT,
    note TEXT,
    arrests DOUBLE PRECISION,
    convictions DOUBLE PRECISION,
    aspirants_affected DOUBLE PRECISION,
    linked_deaths DOUBLE PRECISION,
    deaths_note TEXT,
    source_name TEXT,
    source_url TEXT,
    confidence TEXT,
    arrests_status TEXT,
    conviction_status TEXT,
    deaths_status TEXT,
    exam_category TEXT,
    medical_type TEXT,
    engineering_type TEXT,
    forest_type TEXT,
    year INTEGER,
    quarter TEXT,
    state TEXT,
    region TEXT,
    organization_level TEXT,
    severity TEXT,
    affected_group TEXT,
    exam_level TEXT,
    conducting_body_category TEXT,
    exam_mode TEXT,
    decade TEXT,
    state_code TEXT,
    region_code TEXT,
    affected_category TEXT,
    leak_confirmed TEXT,
    repeat_exam TEXT
);

-- Import the cleaned CSV using pgAdmin Import Tool

-- Verify imported records

SELECT COUNT(*) AS total_records
FROM paper_leaks;

-- Preview imported data

SELECT *
FROM paper_leaks
LIMIT 5;


/*
=========================================================
SECTION 1 : DATASET OVERVIEW
=========================================================
*/

---------------------------------------------------------
-- Query 1
-- Business Question:
-- How many paper leak incidents are recorded?
---------------------------------------------------------

SELECT COUNT(*) AS total_paper_leak_incidents
FROM paper_leaks;


---------------------------------------------------------
-- Query 2
-- Business Question:
-- How many paper leak incidents occurred each year?
---------------------------------------------------------

SELECT
    year,
    COUNT(*) AS total_incidents
FROM paper_leaks
GROUP BY year
ORDER BY year;


---------------------------------------------------------
-- Query 3
-- Business Question:
-- Which states have the highest number of paper leak
-- incidents?
---------------------------------------------------------

SELECT
    state,
    COUNT(*) AS total_incidents
FROM paper_leaks
GROUP BY state
ORDER BY total_incidents DESC
LIMIT 10;


---------------------------------------------------------
-- Query 4
-- Business Question:
-- Which exam categories are most affected by paper leaks?
---------------------------------------------------------

SELECT
    exam_category,
    COUNT(*) AS total_incidents
FROM paper_leaks
GROUP BY exam_category
ORDER BY total_incidents DESC;


/*
=========================================================
SECTION 2 : BUSINESS ANALYSIS
=========================================================
*/

---------------------------------------------------------
-- Query 5
-- Business Question:
-- Which conducting bodies have experienced the highest
-- number of paper leak incidents?
---------------------------------------------------------

SELECT
    conducting_body,
    COUNT(*) AS total_incidents
FROM paper_leaks
GROUP BY conducting_body
ORDER BY total_incidents DESC
LIMIT 10;


---------------------------------------------------------
-- Query 6
-- Business Question:
-- Are State-level or National-level organizations
-- more affected by paper leaks?
---------------------------------------------------------

SELECT
    organization_level,
    COUNT(*) AS total_incidents
FROM paper_leaks
GROUP BY organization_level
ORDER BY total_incidents DESC;


---------------------------------------------------------
-- Query 7
-- Business Question:
-- Which paper leak incidents affected the highest
-- number of aspirants?
---------------------------------------------------------

SELECT
    exam_name,
    year,
    state,
    aspirants_affected
FROM paper_leaks
WHERE aspirants_affected IS NOT NULL
ORDER BY aspirants_affected DESC
LIMIT 10;


---------------------------------------------------------
-- Query 8
-- Business Question:
-- Which paper leak incidents resulted in the highest
-- number of arrests?
---------------------------------------------------------

SELECT
    exam_name,
    year,
    state,
    arrests
FROM paper_leaks
WHERE arrests IS NOT NULL
ORDER BY arrests DESC
LIMIT 10;


/*
=========================================================
SECTION 3 : IMPACT ANALYSIS
=========================================================
*/

---------------------------------------------------------
-- Query 9
-- Business Question:
-- Which exam categories affect the highest average
-- number of aspirants?
---------------------------------------------------------

SELECT
    exam_category,
    ROUND(AVG(aspirants_affected)::NUMERIC, 2)
    AS average_aspirants_affected
FROM paper_leaks
WHERE aspirants_affected IS NOT NULL
GROUP BY exam_category
ORDER BY average_aspirants_affected DESC;


---------------------------------------------------------
-- Query 10
-- Business Question:
-- Which exam categories have the highest average
-- number of arrests?
---------------------------------------------------------

SELECT
    exam_category,
    ROUND(CAST(AVG(arrests) AS NUMERIC), 2)
    AS average_arrests
FROM paper_leaks
WHERE arrests IS NOT NULL
GROUP BY exam_category
ORDER BY average_arrests DESC;


---------------------------------------------------------
-- Query 11
-- Business Question:
-- Which states have the highest average number of
-- aspirants affected per incident?
---------------------------------------------------------

SELECT
    state,
    ROUND(AVG(aspirants_affected)::NUMERIC, 2)
    AS average_aspirants_affected
FROM paper_leaks
WHERE aspirants_affected IS NOT NULL
GROUP BY state
ORDER BY average_aspirants_affected DESC;


---------------------------------------------------------
-- Query 12
-- Business Question:
-- How are paper leak incidents distributed across
-- severity levels?
---------------------------------------------------------

SELECT
    severity,
    COUNT(*) AS total_incidents
FROM paper_leaks
GROUP BY severity
ORDER BY total_incidents DESC;


/*
=========================================================
SECTION 4 : ADVANCED SQL
=========================================================
*/

---------------------------------------------------------
-- Query 13
-- Business Question:
-- Rank states based on the total number of
-- paper leak incidents.
---------------------------------------------------------

SELECT
    state,
    COUNT(*) AS total_incidents,
    RANK() OVER (ORDER BY COUNT(*) DESC) AS state_rank
FROM paper_leaks
GROUP BY state
ORDER BY state_rank;


---------------------------------------------------------
-- Query 14
-- Business Question:
-- Calculate the cumulative number of paper leak
-- incidents over the years.
---------------------------------------------------------

SELECT
    year,
    COUNT(*) AS yearly_incidents,
    SUM(COUNT(*)) OVER (ORDER BY year)
    AS cumulative_incidents
FROM paper_leaks
GROUP BY year
ORDER BY year;


---------------------------------------------------------
-- Query 15
-- Business Question:
-- What percentage of total paper leak incidents
-- comes from each state?
---------------------------------------------------------

SELECT
    state,
    COUNT(*) AS total_incidents,
    ROUND(
        (COUNT(*) * 100.0 /
        SUM(COUNT(*)) OVER ())::NUMERIC,
        2
    ) AS percentage_contribution
FROM paper_leaks
GROUP BY state
ORDER BY percentage_contribution DESC;


---------------------------------------------------------
-- Query 16
-- Business Question:
-- Which conducting body has the highest number of
-- paper leak incidents within each exam category?
---------------------------------------------------------

WITH ranked_bodies AS (

    SELECT
        exam_category,
        conducting_body,
        COUNT(*) AS total_incidents,

        ROW_NUMBER() OVER (
            PARTITION BY exam_category
            ORDER BY COUNT(*) DESC
        ) AS rank_no

    FROM paper_leaks

    GROUP BY
        exam_category,
        conducting_body

)

SELECT
    exam_category,
    conducting_body,
    total_incidents
FROM ranked_bodies
WHERE rank_no = 1;

/*
=========================================================
END OF SQL ANALYSIS

Total Business Queries : 16
Database               : PostgreSQL
Project                : Paper Leak Analysis in India

=========================================================
*/