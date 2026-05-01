import mysql.connector

cb_con_obj=mysql.connector.connect(
    host="localhost",
    user="root",
    password="MYsql@80.45",
    database="oops_project_db"
)


cur_obj=cb_con_obj.cursor()


print(cb_con_obj)

