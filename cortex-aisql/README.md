# 🧠 Cortex AISQL: AI-Powered Multimodal Data Analysis

This project demonstrates how Snowflake Cortex's AI-powered SQL functions can be used to seamlessly analyze and derive insights from multimodal data, including text and images, using familiar SQL syntax.

## ✨ Key Concepts & Features

-   **📄 Multimodal Data Consolidation**:
    -   Leverages `AI_COMPLETE()` to summarize customer issues from different sources like support emails (text) and bug reports (images).
    -   Consolidates insights from both text and image formats into a single table (`insights`) for unified analysis.

-   **🤝 Semantic Joins**:
    -   Introduces the concept of joining tables based on AI-driven relationships rather than just keys.
    -   Uses `AI_FILTER()` in a `JOIN` clause to semantically match customer issues with relevant articles in a solution library.

-   **📊 Insight Aggregation**:
    -   Performs powerful, AI-driven aggregations across many rows to identify trends.
    -   Uses `AI_AGG()` to analyze a collection of support tickets and generate a summary of the top pain points, including their frequency.
    -   Visualizes aggregated data, such as total tickets and unique users per month, using Altair charts in Streamlit.

-   **🏷️ AI-Powered Classification**:
    -   First, it uses `AI_FILTER()` to intelligently pre-filter a dataset for relevant entries (e.g., comments mentioning music).
    -   Then, it uses `AI_CLASSIFY()` to categorize the filtered text into a predefined set of labels (e.g., music genres).
    -   Displays the distribution of these classifications with an interactive pie chart.

## 🛠️ Core Functions Demonstrated

| Function        | Icon | Description                                                                                             |
| :-------------- | :--: | :------------------------------------------------------------------------------------------------------ |
| `AI_COMPLETE()` | ✨   | Generates summaries or extracts information from text and image data.                                   |
| `AI_FILTER()`   | 🔍   | Semantically filters rows based on whether a condition described in a prompt is met.                      |
| `AI_AGG()`      | 📈   | Aggregates information across multiple rows based on a prompt to find overarching themes or insights. |
| `AI_CLASSIFY()` | 🏷️   | Classifies text into one or more predefined categories.                                                 |

This notebook showcases a paradigm shift where AI is not just an external tool but a native, integrated part of the SQL query language, enabling powerful analysis across diverse data types.
