from student import Student
from marks import Marks


s = Student()
m = Marks()

while True:
    print("Student Management System")
    print("1. Add Student")
    print("2. View Students")
    print("3. Update Student")
    print("4. Delete Student")
    print("5. Search Student")
    print("6. Add Marks")
    print("7. Exit")

    ch = int(input("Enter choice: "))

    if ch == 1:
        name = input("Name: ")
        age = int(input("Age: "))
        course = input("Course: ")
        s.add_student(name, age, course)

    elif ch == 2:
        s.view_students()

    elif ch == 3:
        sid = int(input("Student ID: "))
        name = input("New Name: ")
        s.update_student(sid, name)

    elif ch == 4:
        sid = int(input("Student ID: "))
        s.delete_student(sid)

    elif ch == 5:
        sid = int(input("Student ID: "))
        s.search_student(sid)

    elif ch == 6:
        sid = int(input("Student ID: "))
        marks = int(input("Marks: "))
        m.add_marks(sid, marks)

    elif ch == 7:
        break

    else:
        print("Invalid choice")