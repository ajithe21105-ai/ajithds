from dbconnection import cur_obj,cb_con_obj

class login:
    def __init__(self,an,P):
        querrytofetchdata="select *from users"
        cur_obj.execute(querrytofetchdata)
        userdata=cur_obj.fetchall()

        for i in userdata:
            if i[2] == an and i[4] == p:
                from dashboard import
Dashboard
                Dashboard(i)
                breeak
            else:
                print("customer not found with that details")
                continue
        print("login class")


acc = input("enter acc no :   ")
pwd = input("enter password :   ")
login(acc, pwd)
login()