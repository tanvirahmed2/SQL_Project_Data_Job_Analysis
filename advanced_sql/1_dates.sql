
-- Example queries for working with date and time data in SQL
SELECT
    job_title_short AS title,
    job_location AS location,
    job_posted_date AS date
FROM
    job_postings_fact;
LIMIT 5;



--- Example queries for working with date data in SQL
SELECT
    job_title_short AS title,
    job_location AS location,
    job_posted_date:: DATE AS date
FROM
    job_postings_fact;
LIMIT 5;



--- Example queries for working with timestamp data in SQL
SELECT
    job_title_short AS title,
    job_location AS location,
    job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'EST' AS date
FROM
    job_postings_fact
LIMIT 5;



--- Example queries for extracting parts of date and time data in SQL
SELECT
    job_title_short AS title,
    job_location AS location,
    job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'EST' AS date,
    EXTRACT(MONTH FROM job_posted_date) AS date_month,
    EXTRACT(YEAR FROM job_posted_date) AS date_year
FROM
    job_postings_fact
LIMIT 5;



--- Example queries for aggregating date and time data in SQL
SELECT
    COUNT(job_id) AS job_count,
    EXTRACT(MONTH FROM job_posted_date) AS date_month
FROM
    job_postings_fact
WHERE
    job_title_short = 'Data Analyst'
GROUP BY
    date_month
ORDER BY
    job_count DESC;



