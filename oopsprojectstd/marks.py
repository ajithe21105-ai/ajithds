from dbconnection import cur_obj, con_obj

class Marks:

    def add_marks(self, sid, marks):
        grade = self.generate_grade(marks)

        q = "INSERT INTO results(student_id, marks, grade) VALUES (%s, %s, %s)"
        cur_obj.execute(q, (sid, marks, grade))
        con_obj.commit()

        print(f"Marks added. Grade: {grade}")

    def generate_grade(self, marks):
        if marks >= 90:
            return "A"
        elif marks >= 75:
            return "B"
        elif marks >= 50:
            return "C"
        else:
            return "F"