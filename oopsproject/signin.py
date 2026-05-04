
from dbconnection import cur_obj,cb_con_obj
from login import Login

class register__:

    def __init__(self,n,ac_num,fst_bal):
        querrytablecreation="""
        create table if not exists users(
        customer_id int primary key auto_increment,
        name varchar(50) not null unique,
        acc_num varchar(16) not null,
        balance decimal(10,2) not null,
        password varchar(16) not null
        )
        """

        cur_obj.execute(querrytablecreation)
        p=input("enter password here :--   ")
        c_p=input("enter password again here :--   ")

        if p == c_p:
            q="insert into users(name,acc_num,balance,password)values(%s,%s,%s,%s)"

            d=(n,ac_num,fst_bal,p)
            cur_obj.execute(q,d)
            cb_con_obj.commit()
            print("user regestired sucessfully")

            if True:
                accnumber_input_Login=input("enter your acc_number :--   ")
                p_Login=input("enter your password here :--   ")
                Login(accnumber_input_Login,p_Login)



name = input("enter name:  ")
acc = input("enter acc no:  ")
bal = input("enter balance:  ")


register__(name, acc, bal)