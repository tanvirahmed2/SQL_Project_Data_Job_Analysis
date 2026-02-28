# 📊 SQL Project: 2023 Data Analyst Job Market Analysis

## 📌 Introduction

Dive into the 2023 Data Analyst job market. This project explores:

- 💰 Top-paying remote data analyst jobs  
- 🧠 Skills required for high-paying roles  
- 🔥 Most in-demand skills  
- 📈 Skills associated with higher salaries  
- 🎯 The most optimal skills (high demand + high pay)  

All SQL queries used in this analysis are located in the [`project_SQL`](/project_SQL/) folder.

---

# 🛠 Tools Used

- **SQL** – Core querying and data analysis  
- **PostgreSQL** – Database management system  
- **Visual Studio Code** – Query execution and development  
- **Git & GitHub** – Version control and documentation  

---

# 📊 The Analysis

---

## 1️⃣ Top-Paying Remote Data Analyst Jobs

To identify the highest-paying roles, I filtered:

- `job_title_short = 'Data Analyst'`
- `job_location = 'Anywhere'`
- Non-null salary values
- Ordered by `salary_year_avg DESC`
- Limited to top 10

### 🔎 Key Findings

- 💰 Salaries range from **$184,000 to $650,000**
- 🏢 Companies include **SmartAsset, Meta, AT&T**
- 🧑‍💼 Titles range from *Data Analyst* to *Director of Analytics*

This shows remote data analyst roles can reach executive-level compensation.

### 📈 Visualization

![Top Paying Data Analyst Roles](assests/1_top_paying_roles.png)

---

## 2️⃣ Skills Required for Top-Paying Jobs

Using a CTE and joining skills tables, I extracted the skills associated with the highest-paying roles.

### 🔎 Most Frequent Skills in Top 10 Roles

- SQL (8 occurrences)
- Python (7 occurrences)
- Tableau (6 occurrences)
- R
- Snowflake
- Excel

### 📌 Insight

High-paying data analyst roles require:

- Strong SQL foundation  
- Programming skills (Python / R)  
- Data visualization tools  
- Familiarity with modern cloud data tools  

### 📈 Visualization

![Skills for Top Paying Jobs](assests/2_top_paying_roles_skills.png)

---

## 3️⃣ Most In-Demand Skills (Remote Roles)

I grouped skills by frequency across remote job postings.

### 🔥 Top 5 Most In-Demand Skills

| Skill     | Demand Count |
|-----------|-------------:|
| SQL       | 7,291        |
| Excel     | 4,611        |
| Python    | 4,330        |
| Tableau   | 3,745        |
| Power BI  | 2,609        |

### 📌 Insight

- SQL dominates the market.
- Excel remains foundational.
- Python and BI tools are essential.
- Data storytelling and dashboarding skills are highly valued.

---

## 4️⃣ Skills Associated with Higher Salaries

I calculated the average salary per skill for remote roles.

### 💰 Top Paying Skills

| Skill         | Average Salary ($) |
|---------------|-------------------:|
| PySpark       | 208,172            |
| Bitbucket     | 189,155            |
| Couchbase     | 160,515            |
| Watson        | 160,515            |
| DataRobot     | 155,486            |
| GitLab        | 154,500            |
| Swift         | 153,750            |
| Jupyter       | 152,777            |
| Pandas        | 151,821            |
| Elasticsearch | 145,000            |

### 📌 Insight

Higher salaries are associated with:

- Big Data technologies  
- Machine learning tools  
- Cloud platforms  
- Data engineering ecosystems  

This suggests that analysts who combine analytics with engineering skills command higher pay.

---

## 5️⃣ Most Optimal Skills (High Demand + High Salary)

To identify the most strategic skills to learn, I combined:

- Demand count  
- Average salary  
- Minimum demand threshold (> 10 postings)

### 🎯 Top Optimal Skills

| Skill     | Demand | Avg Salary ($) |
|-----------|-------:|---------------:|
| Go        | 27     | 115,320        |
| Confluence| 11     | 114,210        |
| Hadoop    | 22     | 113,193        |
| Snowflake | 37     | 112,948        |
| Azure     | 34     | 111,225        |
| BigQuery  | 13     | 109,654        |
| AWS       | 32     | 108,317        |
| Java      | 17     | 106,906        |
| SSIS      | 12     | 106,683        |
| Jira      | 20     | 104,918        |

### 📌 Insight

The most valuable skills combine:

- ☁️ Cloud platforms  
- 🧱 Data engineering tools  
- 💻 Programming languages  
- 📊 Enterprise collaboration tools  

---

# 📈 Overall Conclusions

### ✅ SQL Is Essential
It is both:
- The most demanded skill  
- Required in top-paying roles  

### ☁️ Cloud Skills Increase Salary
AWS, Azure, BigQuery, and Snowflake significantly increase earning potential.

### 🧠 Engineering + Analytics = Higher Pay
Data analysts with big data and ML capabilities earn more.

### 📊 Foundational Skills Still Matter
Excel and SQL remain core requirements in the market.

---

# 🎓 What I Learned

This project strengthened my ability to:

- Write complex SQL queries (JOINs, CTEs, aggregations)
- Perform multi-table relational analysis
- Analyse demand vs salary relationships
- Translate raw data into business insights
- Think strategically about job market trends

---

# 🚀 How to Run This Project

1. Load the database using scripts inside `sql_load/`
2. Execute SQL queries from `project_SQL/`
3. Review results and visualisations

---

# 📌 Final Thoughts

This analysis provides a data-driven roadmap for aspiring data analysts.

To maximise career potential:

- Master SQL  
- Develop strong Python skills  
- Learn cloud platforms  
- Understand scalable data systems  
- Combine technical depth with business storytelling  
