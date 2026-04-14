

# def greet(n):
#     if n == 5:
#         return
#     print("aj")
#     greet(n+1)
# greet(1)



# def shown(n):
#     if n == 6:
#         return
#     print(n)
#     shown(n+1)
# shown(1)


def sum(n,s=0):
    if n == 0:
        return s
    s += n
    return sum(n-1,s)
n=4
print(sum(n))