# AI Tools App for Snowflake Cortex

This Streamlit application provides a suite of tools that leverage Snowflake Cortex AI and foundational language models to analyze and generate insights from unstructured data. The application offers a secure and user-friendly interface for tasks such as translation, sentiment analysis, summarization, classification, and more.

## ✨ Features

-   **Secure Snowflake Connection**: Establishes a secure connection to your Snowflake instance.
-   **Input Sanitization and Validation**: Ensures data integrity and security through robust input validation and sanitization.
-   **Dynamic Stage Creation**: Automatically creates Snowflake stages for file uploads if they don't already exist.
-   **Text Analytics**:
    -   **Translation**: Translates text between various supported languages.
    -   **Sentiment Analysis**: Determines the sentiment (positive, negative, or neutral) of a given text.
    -   **Summarization**: Generates a concise summary of a longer text.
    -   **Classification**: Categorizes text into predefined labels.
-   **Generative AI**:
    -   **Next Best Action**: Recommends the next best action based on customer feedback or other textual data.
    -   **Email Generation**: Composes professional emails from call transcripts or other text inputs.
    -   **Question Answering**: Answers questions based on a provided context.
-   **Multi-modal Analysis**:
    -   **Image Analysis**: Analyzes uploaded images to provide descriptions and categorizations.
    -   **Audio Transcription**: Transcribes spoken words from audio files.

## 🛠️ Technologies Used

-   **Streamlit**: For building the interactive web application.
-   **Snowflake Snowpark**: For native interaction with Snowflake.
-   **Snowflake Cortex**: The underlying engine for the AI and ML functionalities.
-   **Pandas**: For data manipulation.

## 🚀 How to Use

1.  **Welcome Page**: The main page provides an overview of the application's capabilities.
2.  **Navigate to a Tool**: Use the sidebar to select the desired AI tool.
3.  **Input Data**:
    -   For text-based tools, enter or paste your text into the provided text area.
    -   For file-based tools (Image Analysis, Audio Transcription), specify a Snowflake stage and upload your file.
4.  **Configure and Run**:
    -   Select a foundational model where applicable.
    -   Provide any necessary instructions or prompts.
    -   Click the action button (e.g., "Translate", "Generate E-Mail") to process the data.
5.  **View Results**: The application will display the output from the Snowflake Cortex AI model.

## 🔧 Core Components

### `SecureSnowflakeApp` Class

This class is the backbone of the application, managing all interactions with Snowflake. Its key responsibilities include:

-   **Session Management**: Initializes and maintains a secure Snowflake session.
-   **Constants**: Defines supported languages, foundational models for various tasks, and file handling parameters.
-   **Input Validation**: Includes methods to validate stage names, model names, filenames, and file sizes.
-   **Secure SQL Execution**: A dedicated method (`execute_safe_sql`) to run SQL queries against Snowflake with error handling.
-   **Stage Management**: Ensures that the specified Snowflake stage exists before attempting file operations.

### Application Pages

Each tool is implemented as a separate function that defines its user interface and interaction logic:

-   `toolsapp()`: The main welcome page.
-   `translate()`: Handles text translation.
-   `sentiment()`: Performs sentiment analysis.
-   `supersum()`: Summarizes text.
-   `nextba()`: Determines the next best action.
-   `classify()`: Classifies text into categories.
-   `emailcomplete()`: Generates email content.
-   `askaquestion()`: Answers questions based on provided text.
-   `mmimage()`: Manages image uploads and analysis.
-   `mmaudio()`: Handles audio file uploads and transcription.

### Main Execution

The `main()` function serves as the entry point of the application. It sets up the sidebar navigation and calls the appropriate function based on the user's selection.

### Output Screenshots
#### Image identification: Animal
<img width="794" alt="image" src="https://github.com/user-attachments/assets/ff7e700c-504a-4e77-9d3e-5abbc831023a" />
<img width="897" alt="image" src="https://github.com/user-attachments/assets/8f9bab4b-c6ee-4099-a556-f3c4a3e03edc" />
<img width="762" alt="image" src="https://github.com/user-attachments/assets/a01fdfe2-29f4-4909-89f1-28fa34d1fa8d" />
<img width="681" alt="image" src="https://github.com/user-attachments/assets/e4701e90-aa38-4cae-a0a0-ce7706052031" />

#### Image identification: Invoice
<img width="761" alt="image" src="https://github.com/user-attachments/assets/b248cd27-39de-4450-a27f-2e75fa43faaa" />
<img width="685" alt="image" src="https://github.com/user-attachments/assets/1b234694-fd65-4aa7-ba01-4fe21da345fa" />

#### Translation of English Language to other
<img width="869" alt="image" src="https://github.com/user-attachments/assets/0bdce845-cfab-45c5-a400-571c1e3dd307" />
<img width="892" alt="image" src="https://github.com/user-attachments/assets/283bf826-1fdb-42f2-8339-1b29dc46a264" />





