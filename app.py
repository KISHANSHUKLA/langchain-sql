import streamlit as st
from services.langchain_service import execute_natural_query

st.title("🦜🔗 LangChain SQL Chatbot")

# Static note for users
st.markdown(
    """
    **🔹 Note:**  
    - This bot only answers questions related to **database users and customers**.  
    - If you ask something **unrelated to the database**, it will inform you that it's not able to answer.  
    """
)

# User input
user_query = st.text_input("Ask something about your database:")

if st.button("Run Query"):
    if user_query:
        response = execute_natural_query(user_query)
        
        if "Sorry" in response:  # Detect rejection message
            st.warning(response)  # Show warning for unrelated questions
        else:
            st.write("### Response:")
            st.write(response)
    else:
        st.warning("Please enter a query.")
