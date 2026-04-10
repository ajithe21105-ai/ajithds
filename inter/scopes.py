x = 100   # 🌍 Global variable

def show_global():
    print("Inside function:", x)  # accessing global variable

show_global()

print("Outside function:", x)    # also accessible here





def show_local():
    y = 50   # 📍 Local variable
    print("Inside function:", y)

show_local()

# Trying to access outside
try:
    print(y)
except:
    print("Error: y is not accessible outside the function")






def outer():
    z = 30   #  Enclosed variable

    def inner():
        print("Inside inner function:", z)  # accessing enclosed variable

    inner()

outer()






def outer():
    z = 10

    def inner():
        nonlocal z
        z = z + 5
        print("Inner z:", z)

    inner()
    print("Outer z:", z)

outer()