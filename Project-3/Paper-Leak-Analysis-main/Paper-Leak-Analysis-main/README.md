# 📊 Paper Leak Analysis in India (2004–2026)

A comprehensive Data Analytics project that analyzes paper leak incidents across India from 2004 to 2026 using PostgreSQL, Python, and Power BI.

The project focuses on identifying trends, affected states, exam categories, severity levels, arrests, convictions, repeat examinations, and the overall impact of paper leaks on aspirants.

## 🎯 Project Objectives

- Analyze paper leak incidents reported across India.
- Identify the most affected states and examination categories.
- Study trends of paper leak incidents over time.
- Analyze the severity and confirmation status of incidents.
- Measure the impact on aspirants through repeat examinations.
- Build an interactive Power BI dashboard for data-driven insights.

## 🛠️ Tech Stack

- **Database:** PostgreSQL
- **Programming Language:** Python
- **Libraries:** Pandas, NumPy, Matplotlib, Seaborn
- **Notebook Environment:** Jupyter Notebook
- **Data Visualization:** Power BI
- **Version Control:** Git & GitHub
## 📊 Dataset Information

- **Dataset:** Paper Leak Incidents in India (2004–2026)
- **Total Incidents:** 110
- **Coverage:** Multiple Indian states and examination categories
- **Attributes:** 35+ columns including state, exam name, severity, arrests, convictions, repeat exams, aspirants affected, conducting body, leak confirmation status, and more.
## 📈 Power BI Dashboard

The interactive Power BI dashboard includes three pages:

### 1. Paper Leak Overview Dashboard
- Paper leak trend over years
- Top exam categories
- Total incidents
- Total arrests
- Confirmed leaks
- Linked deaths
- Year and State filters

### 2. State-wise Paper Leak Analysis Dashboard
- Top affected states
- Leak confirmation status
- Top examination categories
- Total convictions
- Total incidents
- Total arrests

### 3. Exam Analysis Dashboard
- Incidents by severity
- Incidents by exam level
- Repeat examinations
- Conducting body analysis
- Total aspirants affected
- Average aspirants affected
- High severity cases
## 📸 Dashboard Preview

> Dashboard screenshots are available in the **powerbi/dashboard_images/** folder.

(Later you'll add the screenshots to this folder.)

##  How to Run the Project

1. Clone this repository.
2. Install the required Python libraries.

```bash
pip install -r requirements.txt
```

3. Open the Jupyter notebooks for data understanding and exploratory data analysis.
4. Execute the SQL queries using PostgreSQL.
5. Open the Power BI dashboard (.pbix) to explore the interactive visualizations.
## 🔍 Key Insights

- Paper leak incidents have increased significantly in recent years.
- Certain states report a much higher number of incidents than others.
- Government recruitment examinations account for a major share of reported leaks.
- High-severity incidents often lead to repeat examinations affecting thousands of aspirants.
- Arrests and convictions vary significantly across incidents.
## 📌 Future Improvements

- Build predictive models to identify high-risk examinations.
- Develop a real-time monitoring dashboard.
- Integrate live news APIs for automatic incident updates.
- Deploy dashboards using Power BI Service.