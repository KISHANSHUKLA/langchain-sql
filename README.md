# LangChain SQL Chatbot with Streamlit

## 🚀 Overview
This project is a LangChain-powered SQL chatbot that allows users to query a database using natural language. It integrates LangChain, LangSmith, OpenAI, and Streamlit for an interactive chatbot experience.

## 🏗️ Technologies Used
- Python - Core language
- LangChain - For natural language processing and database querying
- Streamlit - For building the chatbot UI
- LangSmith - For observability and debugging of LLM applications
- SQLite/MySQL/PostgreSQL - As a backend database

---

## 🔥 Setting Up the Project

### 1️⃣ Create a Virtual Environment & Activate It
Using Conda:
```bash
conda create --name langchain-chatbot python=3.10 -y
conda activate langchain-chatbot
```

Or using `venv`:
```bash
python -m venv venv
source venv/bin/activate  # macOS/Linux
venv\Scripts\activate     # Windows
```

### 2️⃣ Install Dependencies
```bash
pip install -r requirements.txt
```

### 3️⃣ Set Up Environment Variables
Create a `.env` file in the root directory:
```env
OPENAI_API_KEY=your_openai_api_key
DB_URI=sqlite:///chatbot.db
LANGCHAIN_API_KEY=your_langchain_api_key
LANGCHAIN_PROJECT=SQL_Chatbot
```

### 4️⃣ Initialize the Database
```bash
python database/init_db.py  # Run script to create tables & seed data
```

### 5️⃣ Run the Chatbot
```bash
streamlit run app.py
```
Now, open the browser at http://localhost:8501 to interact with the chatbot! 🎉

---

## 📌 Understanding `.gitignore`
### Why use `.gitignore`?
The `.gitignore` file ensures unnecessary files are not pushed to GitHub, keeping the repo clean and secure.

### Sample `.gitignore` file:
```gitignore
# Ignore Python cache files
__pycache__/
*.pyc
*.pyo
*.pyd

# Ignore virtual environments
venv/
.env

# Ignore Streamlit temp files
.streamlit/

# Ignore database files (if SQLite)
*.db
```

---

## 🛠️ Troubleshooting
- If OpenAI API key is missing, set it in `.env`
- If database connection fails, check `DB_URI` in `.env`
- If Streamlit app doesn't start, try:
  ```bash
  streamlit cache clear
  ```
  Then restart the app.

---

## 🎯 Future Enhancements
- Add authentication for user access control
- Improve chatbot accuracy with embeddings
- Deploy on cloud (AWS/GCP/Azure)

---

## 🙌 Contributing
Feel free to fork this repo, raise issues, or submit pull requests!

---

🚀 Happy Coding!

