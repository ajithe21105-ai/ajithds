class DashBoard:

    def __init__(self,loggedinuser):
        print("welcome to hdfc bank")
        print(f"welcome {i[1]} to hdfc bank")

from registe import register__
from login import Login
while True:
    print("choose one option from below")
    print("1. register ..")
    print("2. login ..")

    o=int(input("enter the option froom above"))
    if 0 == 1:
        name_input=input("enter your name :--   ")
        accnumber_input=input("enter your account_number :--   ")
        first_bal_input=input("enter your first_balance :--   ")
        o=register__(name_input,accnumber_input,first_bal_input)
    else:
        accnumber_input_login=input("enter your acc_number :--    ")
        p_login=input("enter password here :--   ")
        Login(accnumber_input_login,p_login)



while True:
    print("1.Register")
    print("2.login")

    o = int(input("enter option :   "))

    if o == 1:
        from registe import register__

    elif o ==2:
        from login import Login