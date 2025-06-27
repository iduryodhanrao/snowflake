# 🎬 Movie Recommender System using Snowflake & KNN

This project implements a scalable, batch inference movie recommendation engine using collaborative filtering. The system leverages **Snowflake**, **Python (scikit-learn, pandas)**, and **Snowpark**, and deploys recommendations using SQL and Snowflake's VARIANT type.

---

## 📌 Project Highlights

### ✅ Snowflake Setup
- Created `ML_MODEL_ROLE`, provisioned compute pool, and granted schema-level privileges.
- Loaded CSV data into `MOVIE_RECOMMENDER_DB.MOVIE_RECOMMENDER_SCHEMA`.
- Built a container runtime with role-based execution for reproducibility.

### 🤖 KNN Model Training
- Converted user-item ratings into a **sparse matrix** for memory-efficient modeling.
- Trained a `NearestNeighbors` model (`cosine` metric) to identify similar users.

### 🔁 Batch Recommendation Function
- Built a Python-based recommender to infer top-3 movies per user from test DataFrame.
- Generated dynamic recommendation scores by aggregating ratings from similar users.

### 🧊 Snowflake Integration
- Stored batch recommendations in a Snowflake table as a `VARIANT` column.
- Used SQL queries with `FLATTEN`, `PARSE_JSON`, and `ROW_NUMBER` to extract and rank movie suggestions.

---

## 📈 Output

- Final output: a Snowflake table with `user_id`, `movie_name`, and `recommendation_score`.
- Query-enabled insights for personalized top-N recommendations per user.

---

## 🚀 Tech Stack

| Layer             | Technology                         |
|------------------|-------------------------------------|
| Data Platform     | Snowflake (Snowpark, SQL)          |
| Modeling          | scikit-learn (`KNN` via cosine)    |
| Language          | Python                             |
| Libraries         | pandas, numpy, scipy               |
| Runtime           | Jupyter Notebook (Streamlit Kernel)|
