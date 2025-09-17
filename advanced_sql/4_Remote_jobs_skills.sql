-- Find the top 5 skills that are most frequently required in remote job postings.

WITH  remote_jobs_skills AS (
    SELECT 
        skill_id,
        COUNT(*) AS skill_count
    FROM
        skills_job_dim AS skills_to_job
    INNER JOIN job_postings_fact AS jobs_to_skill ON skills_to_job.job_id = jobs_to_skill.job_id
    WHERE
        jobs_to_skill.job_work_from_home= true
    GROUP BY
        skill_id
)
SELECT
    skkills.skill_id,
    skills AS skill_name,
    skill_count
FROM
    remote_jobs_skills
INNER JOIN skills_dim AS skkills ON remote_jobs_skills.skill_id = skkills.skill_id
ORDER BY
    skill_count DESC
LIMIT 5;

