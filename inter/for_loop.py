l=[1,2,3,4,5,7,0]
total=10
for i in l:
    total=total+i
print(total)

print(len(l))
for i in range(len(l)):
    print(l[i])

for i in l:
    print(i)



for i in range(ord("a"), ord("z") + 1):
    print(chr(i), end=" ")    