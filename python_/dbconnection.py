import mysql.connector

con_obj=mysql.connector.connect(
    host="localhost",
    user="root",
    password="MYsql@80.45",
    database="oops_projectstd_db"
)


cur_obj=con_obj.cursor()


print(con_obj)