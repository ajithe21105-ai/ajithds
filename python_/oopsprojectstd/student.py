from dbconnection import cur_obj, con_obj

class Student:

    def add_student(self, name, age, course):
        q = "INSERT INTO students(name, age, course) VALUES (%s, %s, %s)"
        cur_obj.execute(q, (name, age, course))
        con_obj.commit()
        print("Student added successfully")

    def view_students(self):
        cur_obj.execute("SELECT * FROM students")
        for i in cur_obj.fetchall():
            print(i)

    def update_student(self, sid, name):
        q = "UPDATE students SET name=%s WHERE id=%s"
        cur_obj.execute(q, (name, sid))
        con_obj.commit()
        print("Updated successfully")

    def delete_student(self, sid):
        q = "DELETE FROM students WHERE id=%s"
        cur_obj.execute(q, (sid,))
        con_obj.commit()
        print("Deleted successfully")

    def search_student(self, sid):
        q = "SELECT * FROM students WHERE id=%s"
        cur_obj.execute(q, (sid,))
        print(cur_obj.fetchone())
        