class Dashboard:
    def __init__( self,i):
        print("dashboard")
        print(i)

        while True:
            print("explore customer features - hdfc bank")
            print("1. withdraw")
            print("2. deposit") 
            print("3. check_bal")
            print("4. exit")


            o = int(input("enter option:  "))

            if o == 1:
                from dbconnection import cur_obj,cb_con_obj
                p=input("enter password to withdraw the amount")
                a=int(input("enter amount to draw here :--   "))
                def withdraw(incomingp,withdrawamt):
                    nonlocal i

                    if incomingp == i[len(i)-1]:
                        if withdrawamt <=0:
                            print("entrer valid amount")
                        else:
                            if withdrawamt < i[3]:
                                i=list(i)
                                i[3] -= withdrawamt
                                return i[3]
                            else:
                                print(f"insufficient funds :-- yr bal is {i[3]}")
                                return "insuffcient funds"
                    else:
                        print("wrong pin")
                rem_bal=withdraw(p,a)
                q="update users set balance=%s where acc_num=%s and password=%s"
                d=(rem_bal,i[2],p)
                cur_obj.execute(q,d)
                cb_con_obj.commit()
                print(f"remaining bal is {rem_bal} and withdraw amount is {a}")
            elif o == 2:
                print("deposit feature")

            elif o == 3:
                p=input("enter password to check the bal")
                def check_bal(incomingp):
                    if incomingp == i[len(i)-i]:
                        print(self.__balance)
                        return i[3]
                    else:
                        print("enter proper pin to processfurthur")
                bal=check_bal(p)
                print(f"min bal is {bal}")
            elif o == 4:
                break
                

