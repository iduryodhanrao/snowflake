# 📈 Questioning the Answers: Harnessing Alpha from Earnings Calls

This Streamlit notebook, based on research by **S&P Global Market Intelligence's Quantitative Research & Solutions (QRS) Group**, demonstrates how to use Generative AI and Large Language Models (LLMs) to analyze corporate earnings calls and identify signals that can generate investment alpha.

The core idea is to quantify executive communication effectiveness by measuring how "on-topic" and "proactive" they are in their responses to financial analysts. The research shows that proactive, on-topic executives tend to outperform their peers.

## ✨ Key Features & Workflow

-   **🗣️ Transcript Analysis**:
    -   Processes and tokenizes earnings call transcripts, separating them into distinct components: Prepared Remarks, Analyst Questions, and Executive Answers.

-   **🧠 Retrieval-Augmented Generation (RAG)**:
    -   Creates vector embeddings for all text components using Snowflake Cortex `embed_text_768`.
    -   Calculates `vector_cosine_similarity` to find the most relevant sentences from prepared remarks and answers for each analyst question.
    -   Uses the top 60% of relevant sentences to provide optimized context to the LLM, enhancing response consistency.

-   **🤖 LLM-Powered Simulation**:
    -   Constructs a detailed conversational prompt for a Large Language Model (`llama3.1-8b` by default).
    -   Uses Snowflake Cortex `complete` to generate an "ideal" answer to an analyst's question based *only* on the information provided in the company's prepared remarks.

-   **🧮 Factor Construction for Alpha**:
    -   **On/Off-Topic Factor**: Measures the semantic similarity between an analyst's question and the *actual executive's answer*. A high score indicates the executive is on-topic.
    -   **Proactive/Reactive Factor**: Measures the semantic similarity between an analyst's question and the *LLM's answer*. A high score suggests the executive was proactive and anticipated the question in their prepared remarks.

-   **❓ Interactive Q&A**:
    -   Provides a Streamlit chat interface allowing you to ask your own follow-up questions about the earnings call, using the full conversation history as context.

## 🛠️ Core Technologies Used

-   **Snowflake Cortex**:
    -   `embed_text_768`: To create vector embeddings from text.
    -   `complete`: To generate answers from a Large Language Model.
    -   `summarize`: To create concise summaries of text components.
    -   `vector_cosine_similarity`: To measure the semantic closeness between text vectors.
-   **Snowpark for Python**: For data manipulation and feature engineering at scale.
-   **Streamlit**: To create the interactive user interface for analysis and Q&A.
-   **S&P Global Datasets**: The full research leverages S&P datasets from the Snowflake Marketplace for financial and transcript data (a sample is used in this notebook).
