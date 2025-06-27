# 🤖 Intelligent Sales Assistant (Streamlit + Snowflake Cortex)

This Streamlit application leverages **Snowflake Cortex**, **semantic search**, and **LLM-based text-to-SQL translation** to enable natural language interaction with enterprise sales data and documents.

---

## 🚀 Key Features

### ✨ Natural Language Chat Interface
- Built with `streamlit.chat_input` to support conversational queries.
- Chat history preserved using session state.

### 🔍 Snowflake Cortex Integration
- Connects to the Snowflake Cortex API for:
  - `text_to_sql`: Converts natural language into SQL using the **"Sales Analyst"** tool.
  - `semantic_search`: Searches enterprise PDFs/JPEGs through a **"Docs and Images Search"** tool.

### 📂 Document & Image Retrieval
- Extracts relevant document chunks from PDFs or previews JPEGs using presigned URLs.
- Dynamically renders citations via `streamlit_extras.stylable_container`.

### ⚙️ Real-Time SQL + Report Generation
- Executes generated SQL directly in Snowflake using Snowpark sessions.
- Displays sales metrics with `st.dataframe()` for quick decision-making.

### 🧠 Semantic Search Config
- Configured with:
  - `@DASH_CORTEX_AGENTS_SUMMIT.PUBLIC.SEMANTIC_FILES/semantic_search.yaml`
  - `DASH_CORTEX_AGENTS_SUMMIT.PUBLIC.DOCUMENTATION_TOOL` as searchable corpus.

---

## 💡 How It Works

1. User submits a question (e.g., *"What were the top-selling bikes in Q1?"*)
2. App sends the request to Snowflake Cortex with defined tools and semantic resources.
3. Cortex returns:
   - a generated SQL query
   - a plain-text response
   - supporting document citations (PDF/JPEG)
4. App executes SQL, displays insights, and highlights relevant documents in a stylized container.

---

## 🛠 Tech Stack

| Layer        | Technology                                |
|--------------|--------------------------------------------|
| Frontend     | Streamlit                                  |
| LLM API      | Snowflake Cortex + Claude-3.5 Sonnet       |
| Data Query   | Snowflake SQL + Snowpark Python            |
| Search Corpus| Snowflake semantic model + document table  |
| UI Styling   | `streamlit_extras.stylable_container`      |

---

## 🧪 Example Use Cases

- Interactive sales dashboards powered by conversational AI  
- Technical document search & extraction via chat  
- Natural language-driven analytics for business users

---

## 📦 Requirements

- Snowflake account with Cortex access  
- Documents uploaded to `@DOCS` stage and chunked  
- Proper semantic model YAML and role-based access

---

Let me know if you'd like to append a setup guide or deployment workflow!

## Streamlit Output Screenshots
Natural language to the chatbot that returns the SQL and the data using the tools like Cortex Analyst, Cortex Search (Additional tools for charts, emails, etc may be added in future enhancements)

<img width="503" alt="image" src="https://github.com/user-attachments/assets/5567380d-a099-4778-b5aa-fe156b32b268" />
<img width="506" alt="image" src="https://github.com/user-attachments/assets/a4ce3026-97e6-4a3a-8088-a3edeb1e757d" />
<img width="515" alt="image" src="https://github.com/user-attachments/assets/6d235ddd-0d33-49b9-9da1-01adeb11f477" />
<img width="511" alt="image" src="https://github.com/user-attachments/assets/1ddb1153-66ff-43f6-a05e-57841d332f55" />






