# Oops intro task :-- 

# 🧩 Task 1: Student System
# 👉 Question:
# Create a class Student with:
# Class variable: school_name = "XYZ School"
# A method set_details()
#  → inside method, assign:
# name = "Vamsi"
# marks = 85
# A method display()
#  → print:
# Name
# Marks
# School name
# 👉 Outside the class:
# Create object
# Call set_details()
# Call display()





class student:

    school_name = "xyz school"

    def set_details(self):

        self.name = "vamsi"
        self.marks = 95

    def display(self):
    
        print("school_name",student.school_name)
        print("name",self.name)
        print("marks",self.marks)

stu1 = student()
stu1.set_details()
stu1.display()
print(stu1.name)
print(stu1.marks)





# 🧩 Task 2: Employee System
# 👉 Question:
# Create a class Employee with:
# Class variable: company = "Infosys"
# A method set_data()
#  → assign:
# name = "Ravi"
# salary = 20000
# A method increase_salary()
#  → add 5000 to salary
# A method display()
#  → print all details
# 👉 Outside the class:
# Create object
# Call all methods




class employee:

    company = "infosys"

    def set_data(self):
        self.name = "ravi"
        self.salary = 20000

    def increase_salary(self):

        self.salary += 5000

    def display(self):

        print("company",employee.company)
        print("name",self.name)
        print("salary",self.salary)

emp1 = employee()
emp1.set_data()
emp1.increase_salary()
emp1.display()





# 🧩 Task 3: Mobile System
# 👉 Question:
# Create a class Mobile with:
# Class variable: brand = "Apple"
# A method set_details()
#  → assign:
# model = "iPhone 14"
# price = 80000
# A method discount()
#  → reduce price by 10%
# A method show_details()
#  → print all details
# 👉 Outside the class:
# Create object
# Call methods





class mobile:

    brand = "apple"

    def set_details(self):

        self.model = "iphone 14"
        self.price = 80000

    def discount(self):

        self.price -= self.price *0.10

    def show_details(self):

        print("brand",mobile.brand)
        print("model",self.model)
        print("price",self.price)

p = mobile()
p.set_details()
p.discount()
p.show_details()