from dbconnection import cur_obj, con_obj

cur_obj.execute("""
    CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    age INT,
    course VARCHAR(50)
);
""")

cur_obj.execute("""
                CREATE TABLE results (
    student_id INT,
    marks INT,
    grade VARCHAR(2),
    FOREIGN KEY (student_id) REFERENCES students(id)
);
""")

con_obj.commit()