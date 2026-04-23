
# prime num:

n=int(input("nu:"))
count=0
for i in range(1,n+1):
    if n%i==0:
        count+=1

if count == 2:
     print("true")
else:
    print("false")




s="aabbaaccaa"
res=""
for i in s:
    if i not in res:
        res+=i+str(s.count(i))
        
print(res)