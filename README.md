# Paper-Leak-Analysis
An end-to-end Data Analytics project that explores historical examination paper leak incidents in India to uncover trends, identify high-risk regions, examination boards, subjects, and other contributing factors using **Python, MySQL, SQL, and Power BI**.

The project follows a complete data analytics workflow—from data understanding and cleaning to exploratory data analysis (EDA), SQL querying, and interactive dashboard development.

---

# 📌 Project Overview

Examination paper leaks have become a significant challenge for educational institutions, affecting the credibility and fairness of competitive and academic examinations.

This project analyzes paper leak incidents across multiple dimensions such as year, examination type, state, organization, subject, and leak methods to generate actionable insights that can help authorities strengthen examination security and reduce future incidents.

---

# 🎯 Objectives

- Understand historical paper leak patterns
- Clean and preprocess raw data
- Perform Exploratory Data Analysis (EDA)
- Store cleaned data for SQL analysis
- Build an interactive Power BI dashboard
- Generate meaningful insights for decision-making

---

# 🛠️ Tech Stack

| Technology | Purpose |
|------------|----------|
| Python | Data Cleaning & Analysis |
| Pandas | Data Manipulation |
| NumPy | Numerical Operations |
| Matplotlib | Data Visualization |
| Seaborn | Statistical Visualization |
| MySQL | Database Management |
| SQL | Data Analysis |
| Power BI | Interactive Dashboard |

---

# 📂 Project Structure

```text
Paper-Leak-Analysis/
│
├── data/
│   ├── raw/
│   │   └── Raw Data.csv
│   │
│   └── cleaned/
│       └── Cleaned Data.csv
│
├── notebooks/
│   ├── 01_Data_Understanding.ipynb
│   ├── 02_EDA.ipynb
│   ├── columns.csv
│   └── dtypes.csv
│
├── powerbi/
│   ├── dashboard_images/
│   └── paper_leak_analysis_dashboard.pbix
│
├── sql/
│   ├── query_results/
│   └── paper_leak_analysis_queries.sql
│
├── requirements.txt
└── README.md
```

---

# 📁 Project Workflow

## 1️⃣ Data Collection

Collected and loaded the raw paper leak dataset for analysis.

Dataset Location

```
data/raw/
```

---

## 2️⃣ Data Understanding

Performed an initial assessment of the dataset by examining:

- Dataset dimensions
- Feature descriptions
- Missing values
- Duplicate records
- Data types
- Summary statistics

Notebook

```
notebooks/01_Data_Understanding.ipynb
```

---

## 3️⃣ Data Cleaning

Preprocessed the dataset to improve quality and consistency.

Cleaning tasks included:

- Removing duplicate records
- Handling missing values
- Standardizing text values
- Correcting inconsistent formatting
- Converting data types
- Preparing data for analysis

Cleaned Dataset

```
data/cleaned/
```

---

## 4️⃣ Exploratory Data Analysis (EDA)

Performed detailed analysis to identify meaningful trends and patterns.

The analysis includes:

- Paper Leaks by Year
- Paper Leaks by State
- Paper Leaks by Examination Type
- Paper Leaks by Conducting Organization
- Subject-wise Analysis
- Region-wise Distribution
- Time Trend Analysis
- Frequency Distribution
- Correlation Analysis
- Outlier Detection

Notebook

```
notebooks/02_EDA.ipynb
```

---

## 5️⃣ SQL Analysis

Imported the cleaned dataset into MySQL and performed SQL-based analysis.

Business queries include:

- Total Paper Leak Incidents
- Year-wise Analysis
- State-wise Analysis
- Examination-wise Analysis
- Organization-wise Analysis
- Subject-wise Analysis
- Most Affected Regions
- Incident Frequency
- Trend Analysis
- Summary Statistics

SQL File

```
sql/paper_leak_analysis_queries.sql
```

Query outputs are available in:

```
sql/query_results/
```

---

## 6️⃣ Power BI Dashboard

Built an interactive Power BI dashboard to visualize important trends and insights.

### Dashboard Features

- Total Paper Leak Cases
- Year-wise Trend
- State-wise Distribution
- Examination-wise Analysis
- Organization-wise Analysis
- Subject-wise Analysis
- Interactive Filters
- Dynamic KPIs
- Charts & Visualizations

Dashboard File

```
powerbi/paper_leak_analysis_dashboard.pbix
```

Dashboard screenshots are available in:

```
powerbi/dashboard_images/
```

---

# 📊 Key Insights

The analysis helps answer questions such as:

- Which states report the highest number of paper leak incidents?
- Which examinations are most vulnerable?
- Which organizations are most frequently affected?
- Which subjects experience the highest number of leaks?
- Are paper leak incidents increasing or decreasing over time?
- Which categories require stronger security measures?

---

# 🚀 How to Run

## Clone the Repository

```bash
git clone https://github.com/vikasdange-debug/Paper-Leak-Analysis.git
```

---

## Install Dependencies

```bash
pip install -r requirements.txt
```

---

## Run the Jupyter Notebooks

Start Jupyter Notebook

```bash
jupyter notebook
```

Run notebooks in order:

```
01_Data_Understanding.ipynb
```

↓

```
02_EDA.ipynb
```

---

## Execute SQL Queries

Open MySQL Workbench (or any SQL client) and run:

```
sql/paper_leak_analysis_queries.sql
```

---

## Open Power BI Dashboard

Open:

```
powerbi/paper_leak_analysis_dashboard.pbix
```

using Microsoft Power BI Desktop.

---

# 📈 Skills Demonstrated

- Data Cleaning
- Data Preprocessing
- Exploratory Data Analysis (EDA)
- SQL Query Writing
- MySQL Database Management
- Business Intelligence
- Dashboard Development
- Data Visualization
- Statistical Analysis
- Insight Generation

---

# 🔮 Future Improvements

- Predictive Modeling for Risk Assessment
- Machine Learning-based Leak Prediction
- NLP Analysis of News Reports
- Automated ETL Pipeline
- Real-time Incident Monitoring Dashboard
- Interactive Web Dashboard using Streamlit
- Geospatial Heat Maps
- Time Series Forecasting

---

# 📜 License

This project is developed for educational, research, and portfolio purposes.

---

# 👨‍💻 Author

**Vikas Dange**

📌 Passionate about Data Analytics, Artificial Intelligence, and Software Development.

🌐 **GitHub:**  https://github.com/vikasdange-debug

💼 **LinkedIn:**  https://www.linkedin.com/in/vikas-dange-b9327b349/


---

⭐ If you found this project useful, consider giving it a **Star** on GitHub!
