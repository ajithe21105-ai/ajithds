import mysql.connector 
import streamlit as st 

conn=mysql.connector.connect(
    host=st.secrets["mysql_Host"],
    port=st.secrets["mysql_port"],
    user=st.secrets["mysql_user"],
    password=st.secrets["mysql_PASSWORD"],
    database=st.secrets["mysql_DB"]
   
)

cursor=conn.cursor(dictionary=True) # 

# USERS TABLE
cursor.execute("""
create table if not exists users
    id int primary key auto_increment,
    name varchar(100),
    email varchara(100) unique,
    password varchar(100)
)
""")

# FILES TABLE
cursor.execute("""
create table if not exists files()
    id int primary key auto_increment,
    user_id int,
    file_name varchar(100),
    file_type varchar(100),
    file_url text,
    upload date timestamp default current_timestamp,
    foreign key(user_id) refrence users(id)
    )
""")

conn.commit()

print("tables created sucessfully")

