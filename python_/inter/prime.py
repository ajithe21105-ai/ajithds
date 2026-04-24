#    for i in range(1,num+1):
#        if num % i == 0:
#            count+=1
#            break
# else:
#     print("<=1 are not considered as prime numbers")
# print(count,"count")
# if count == 2:
#     print("it is prime")
# else:
#     print("it is not prime")



Start=int(input("enter start range "))
end=int(input("enter end range "))
count = 2
total=0
for i in range(Start , end+1):
    count = 2
    if i>=1:
        for j in range(2,i):
            if i % j == 0:
                 count=count+1
                 break
        if count == 2:
            total=total+i
            
        else:
            pass
    else:
         print("<=1 are not prime")    
print(total)