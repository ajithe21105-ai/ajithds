import streamlit as st
import pandas as pd
import os

file_name="job_seekers.csv"

if os.path.exists(file_name):
        df = pd.read_csv(file_name)
else:
        df = pd.dataframe(columns=["name","email","skills","experience","location"])
    

st.title("💼 job seeker managment system")


st.header("➕ add job seekers")

with st.form("job_form"):    
    name = st.text_input("name")
    email = st.text_input("email")
    skills = st.text_input("skills (comma seperated)")
    experience = st.number_input("experience (years)", min_value=0)
    location =st.text_input("location")

    submitted = st.from_submit_button("submit")

    if submitted:
        new_data = pd.dataframe([{name,email,skills,experience,location}],
                                columns=df.columns) 
        df = pd.contact([df,new_data],ignore_index=true) 
        df.to_csv(file_name, index=false)
        st.sucess("✅ job seeker added sucessfully!")

st.header("🗒️ all job seekers")
st.dataframe(df)

st.header("🔍 search candidates")

search_name = st.text_input("search by name")
search_skill = st.text_input("serch by skill")

filtered_df = df.copy()

if search_skills:
      filtered_df = filter df[
         filtered_df["skills"].str.contains(search_skill, case=false, na=false)
      ]
st.subheader("filtered results")
st.dataframe(filtered_df)      
           