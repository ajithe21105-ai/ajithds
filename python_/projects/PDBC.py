

import mysql.connector

dbconnection=mysql.connector.connect(
    host="3306",
    user="root",
    password="MYsql@80.45",
    database="ajithdb"
)

if conn.isconnected():
    print("connection established sucessfully.")

cursor.execute("show databases")


for 