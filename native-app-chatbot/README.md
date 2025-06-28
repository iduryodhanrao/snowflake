# 🎬 Snowflake CineBot: RAG-Powered Movie Recommender using Snowflake Native Apps and Snowflake Cortex

This is a Streamlit application that functions as an intelligent movie recommendation chatbot. It leverages the power of **Snowflake Cortex Search** and **Large Language Models (LLMs)** to provide contextual, conversational movie recommendations using a Retrieval-Augmented Generation (RAG) architecture.

## ✨ Features

  - **🤖 RAG-Powered Chatbot**: Uses a Cortex Search Service to retrieve relevant movie information from your database and feeds it as context to an LLM for accurate, data-driven recommendations.
  - **⚙️ Automated Setup**: If a Cortex Search Service isn't detected, the app provides a one-click button to automatically chunk the underlying data and create the necessary search service.
  - **🗣️ Conversational Memory**: Can utilize chat history to understand follow-up questions and provide context-aware responses.
  - **🔧 Highly Configurable**: The sidebar allows users to:
      - Switch between different Cortex Search Services.
      - Select from various LLMs (e.g., `mistral-large`, `snowflake-arctic`, `llama3-70b`).
      - Adjust the number of context documents retrieved.
      - Toggle chat history and debug mode on or off.
  - **❄️ Native Snowflake Integration**: Built using Streamlit, Snowpark, and the `snowflake.core` library to interact directly and securely with Snowflake objects.

## workflow How It Works

The application follows a Retrieval-Augmented Generation (RAG) pattern to answer user questions:

1.  **Check for Service**: On startup, the app verifies that a Cortex Search Service is available. If not, it prompts the user to create one.
2.  **User Asks a Question**: The user types a movie-related question into the chat interface (e.g., "Recommend a movie like The Matrix").
3.  **Enhance with History (Optional)**: If chat history is enabled, the LLM first creates a new, context-aware query that incorporates the previous conversation.
4.  **🔍 Retrieve Context**: The user's question (or the enhanced query) is sent to the selected **Cortex Search Service**. The service performs a semantic search on the movie database and returns the most relevant movie plots or descriptions.
5.  **🧠 Construct Prompt**: A detailed prompt is assembled, containing:
      - The retrieved movie data (the "context").
      - The recent chat history.
      - The user's original question.
6.  **💬 Generate Response**: The complete prompt is sent to the selected LLM via the `snowflake.cortex.complete` function. The LLM uses all the provided information to generate a helpful, conversational movie recommendation.
7.  **Display Answer**: The LLM's response is displayed in the chat, and the conversation is saved to continue the dialogue.

## 🛠️ Key Technologies

  - **UI**: [Streamlit](https://streamlit.io/) (`st.chat_input`, `st.sidebar`, `st.session_state`)
  - **Search & AI**: [Snowflake Cortex](https://www.google.com/search?q=https://www.snowflake.com/en/data-cloud/cortex/)
      - **Cortex Search Service**: For the semantic search/retrieval step.
      - **`snowflake.cortex.complete`**: For LLM-based text generation.
  - **Data Interaction**:
      - [Snowpark for Python](https://docs.snowflake.com/en/developer-guide/snowpark/python/index): For querying and data manipulation.
      - `snowflake.core.Root`: To programmatically interact with Snowflake objects like Cortex Search Services.
