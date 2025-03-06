import os
from sqlalchemy import create_engine
from langchain_community.utilities import SQLDatabase
from langchain_openai import ChatOpenAI
from langchain_experimental.sql import SQLDatabaseChain
from dotenv import load_dotenv
from langsmith import traceable

# Load environment variables
load_dotenv()

# Initialize LangSmith
os.environ["LANGCHAIN_TRACING_V2"] = "true"
os.environ["LANGCHAIN_API_KEY"] = os.getenv("LANGCHAIN_API_KEY")
os.environ["LANGCHAIN_PROJECT"] = os.getenv("LANGCHAIN_PROJECT")

# OpenAI API Key
OPENAI_API_KEY = os.getenv("OPENAI_API_KEY")

# Database Connection
DB_URI = os.getenv("DB_URI")
engine = create_engine(DB_URI)
database = SQLDatabase(engine)

# LLM Initialization
llm = ChatOpenAI(model="gpt-4", temperature=0, api_key=OPENAI_API_KEY)

# SQL Chain
db_chain = SQLDatabaseChain.from_llm(llm, database, verbose=True)

# Define keywords related to your database
ALLOWED_KEYWORDS = ["user", "customer"]  # Modify based on your database

@traceable(run_type="chain")  # Track execution in LangSmith
def execute_natural_query(user_query: str):
    """Check if query is relevant before executing."""
    lower_query = user_query.lower()
    
    # Check if the query contains any database-related keywords
    if any(keyword in lower_query for keyword in ALLOWED_KEYWORDS):
        return db_chain.run(user_query)
    else:
        return "Sorry, I can only answer questions related to the database."
