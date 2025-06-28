# ❄️ Snowflake Data Explorer

A user-friendly Streamlit application designed for interactively exploring and visualizing data directly within your Snowflake environment. This tool allows users to navigate through databases, schemas, and tables, and instantly generate previews and charts without writing any SQL.

## ✨ Features

-   **🗺️ Interactive Data Navigation**: Easily browse and select your desired database, schema, and table using interactive sidebar widgets.
-   **📄 Instant Data Preview**: Get a quick look at your data with an expandable data frame that shows a sample of the selected table.
-   **📊 Dynamic Charting**: Automatically identify numeric columns and visualize them with a choice of bar, line, or area charts to understand data distributions.
-   **📍 Geospatial Visualization**: If your data contains latitude and longitude columns, you can plot them on an interactive map with a single click.
-   **🔗 Direct Snowflake Connection**: Uses the active Snowpark session (`get_active_session`) for a seamless and secure connection, perfect for running as a Streamlit-in-Snowflake app.
-   **⚡ Performance Caching**: Leverages Streamlit's caching (`@st.cache_data`) to speed up metadata and data fetching, ensuring a smooth and responsive user experience.

## 🚀 How to Use

1.  **Run the App**: Ensure this application is running within a Snowflake environment (e.g., as a Streamlit-in-Snowflake app in Snowsight).
2.  **Select Data Source**: Use the sidebar on the left to navigate.
    -   Choose a **Database** from the first dropdown.
    -   Select a **Schema** from the list that appears.
    -   Pick a **Table** or **View** to explore.
3.  **Explore the Data**: Once a table is selected, the main panel will update with exploration options:
    -   Expand the **"Show Table Data Sample"** section to view the raw data.
    -   Under **"Basic Column Visualization"**, select a numeric column and chart type to see a plot.
    -   In the **"Map Visualization"** section, choose your latitude and longitude columns and click "Plot Map".

## 🛠️ Technical Details

-   **Framework**: Built entirely with [Streamlit](https://streamlit.io/).
-   **Connection**: Connects to Snowflake using `snowflake.snowpark.context.get_active_session()`.
-   **Data Fetching**: Uses Snowpark DataFrames (`session.sql()` and `session.table()`) to query metadata and data. Results are converted to Pandas DataFrames for visualization.
-   **UI Widgets**: Makes extensive use of `st.sidebar`, `st.selectbox`, `st.expander`, and `st.button` to create the interactive interface.
-   **Visualization**: Employs Streamlit's native charting elements:
    -   `st.dataframe()` for table previews.
    -   `st.bar_chart()`, `st.line_chart()`, `st.area_chart()` for basic plotting.
    -   `st.map()` for geospatial data.