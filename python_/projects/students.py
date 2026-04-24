import json


open("student.json","w")

import json

data = [{"name": "akhil", "age": 29}, {"name": "srinu", "age": 22}]
print(type(data))

abc = json.dumps(data)
print(type(abc))

xyz = json.loads(abc)
print(type(xyz))

file_name = "students.json"

def load_data():
    try:
        abc = open(file_name, "r")
        return json.load(abc)
    except:
        return []

def dump_data(x):
    xyz = open(file_name, "w")
    json.dump(x, xyz)

def add_student():
    allstuds = load_data()
    n = input("enter name here :-- ")
    a = int(input("enter age here :-- "))
    new_data = {"name": n, "age": a}
    allstuds.append(new_data)
    dump_data(allstuds)
    print("student added successfully....")

def view_students():
    allStuds = load_data()
    for i in range(0, len(allStuds)):
        print(i + 1, allStuds[i]["name"], allStuds[i]["age"])

def update_student():
    allStuds = load_data()
    view_students()
    i = int(input("enter id to update the student :-- "))
    name = input("enter name here :-- ")
    age = int(input("enter age here "))
    indexNum = i - 1
    allStuds[indexNum] = {"name": name, "age": age}
    dump_data(allStuds)
    print("student got updated....")

def delete_student():
    allStuds = load_data()
    view_students()
    i = int(input("enter student id to delete :-- "))
    indexNum = i - 1
    allStuds.pop(indexNum)
    dump_data(allStuds)
    print(f"student got deleted whose having id {i}")

while True:
    print("\n1. adding student")
    print("2. reading students")
    print("3. updating student")
    print("4. deleting student")
    print("5. exit")

    o = int(input("enter option here from above list :-- "))

    if o == 1:
        add_student()
    elif o == 2:
        view_students()
    elif o == 3:
        update_student()
    elif o == 4:
        delete_student()
    else:
        break