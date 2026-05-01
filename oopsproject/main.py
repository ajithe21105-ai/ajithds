class dashboard:

    def __init__(self,loggedinuser):
        print("welcome to hdfc bank")
        print(f"welcome {i[1]} to hdfc bank")

from regis import register__
from login import login
while True:
    print("choose oneoption from below")
    print("1. register ..")
    print("2. login ..")

    o=int(input("enter the option froom above"))
    if 0 == 1:
        name_input=input("enter your name :--   ")
        accnumber_input=input("enter your account_number :--   ")
        first_bal_input=input("enter your first_balance :--   ")
    else:
        accnumber_input_login=input("enter your acc_number :--    ")
        p_login=input("enter password here :--   ")
        login(accnumber_input_login,p_login)



while True:
    print("1.Register")
    print("2.login")

    o = int(input("enter option :   "))

    if o == 1:
        from regis import register__

    elif o ==2:
        from login import login