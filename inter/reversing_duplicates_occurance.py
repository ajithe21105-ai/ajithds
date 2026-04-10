


num = int(input("Enter a number:-- "))

rev = 0
sum_even = 0
sum_odd = 0

t = num

while t > 0:
    d = t % 10
    
    
    rev = rev * 10 + d
    
    
    if d % 2 == 0:
        sum_even += d
    else:
        sum_odd += d
    
    t = t // 10

print("Reversed number:", rev)
print("Sum of even digit:", sum_even)
print("Sum of odd digit:", sum_odd)





i = 1

while i <= 100:
    if i % 5 == 0:
        print(i, end=" ")
    