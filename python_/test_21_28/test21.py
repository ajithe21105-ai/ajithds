Q1. What will be the output?
sum = 0
for i in range(1, 6):
    if i % 2 == 0:
        sum += i
print(sum)
A) 6
B) 9
C) 10
D) 15
Answer: A) 6
________________________________________
Q2. Which condition is used to check even number?
A) num / 2 == 0
B) num % 2 == 0
C) num % 2 == 1
D) num == 2
Answer: B) num % 2 == 0
________________________________________
Q3. What will be the output?
text = "hello"
count = 0
for ch in text:
    if ch in "aeiou":
        count += 1
print(count)
A) 1
B) 2
C) 3
D) 5
Answer: B) 2
________________________________________
Q4. Which of the following is used to check a vowel?
A) ch == "aeiou"
B) ch in "aeiou"
C) ch = "aeiou"
D) ch != "aeiou"
Answer: B) ch in "aeiou"
________________________________________
Q5. What will be the output?
even = 0
odd = 0
for i in range(1, 5):
    if i % 2 == 0:
        even += i
    else:
        odd += i
print(even, odd)
A) 6 4
B) 4 6
C) 10 0
D) 0 10
Answer: B) 4 6
________________________________________
Python Code Snippets – Output
Q1
def add(a, b):
    return a + b
print(add(2, 3))
Answer: 5
________________________________________
Q2
def check(num):
    if num > 0:
        return "Positive"
    else:
        return "Negative"
print(check(-5))
Answer: Negative
________________________________________
Q3
def func(x):
    return x * x
print(func(4))
Answer: 16
________________________________________
Q4
def test(a, b=5):
    return a + b
print(test(3))
Answer: 8
________________________________________
Q5
def loop():
    for i in range(3):
        print(i)
loop()
Answer:
0
1
2
________________________________________
Q6
def compare(a, b):
    if a > b:
        return a
    else:
        return b
print(compare(10, 20))
Answer: 20
________________________________________
Q7
def check_even(n):
    if n % 2 == 0:
        return True
    else:
        return False
print(check_even(7))
Answer: False
________________________________________
Q8
def calc(a, b):
    c = a * b
    return c
x = calc(2, 5)
print(x)
Answer: 10
________________________________________
Q9
def run():
    for i in range(1, 4):
        if i == 2:
            continue
        print(i)
run()
Answer:
1
3
________________________________________
Q10
def value(x):
    if x:
        return "Yes"
    else:
        return "No"
print(value(0))
Answer: No
________________________________________
Python Theory Questions – Suggested Answers
Q1. What is a variable in Python? How do you create one?
A variable is a named location to store data. You create it by assigning a value:
x = 10
name = "Alice"
________________________________________
Q2. Explain different data types in Python with examples.
•	int: 5, 10 
•	float: 3.14, 2.0 
•	str: "Hello", 'Python' 
•	bool: True, False 
•	list: [1,2,3] 
•	tuple: (1,2,3) 
•	set: {1,2,3} 
•	dict: {"a":1, "b":2} 
________________________________________
Q3. What is the difference between int, float, and str?
•	int: whole numbers (10, -5) 
•	float: decimal numbers (3.14, 0.5) 
•	str: text ("Hello", "123") 
________________________________________
Q4. What are operators in Python? Name different types.
Operators perform operations on values. Types:
•	Arithmetic: +, -, *, /, % 
•	Comparison: ==, !=, >, < 
•	Logical: and, or, not 
•	Assignment: =, +=, -= 
•	Membership: in, not in 
________________________________________
Q5. Difference between = and ==
•	= assigns a value 
•	== compares values 
________________________________________
Q6. Explain conditional statements (if, elif, else).
x = 10
if x > 10:
    print("A")
elif x == 10:
    print("B")
else:
    print("C")
Executes code based on conditions.
________________________________________
Q7. What is a for loop? When do we use it?
Used to repeat a block of code a fixed number of times.
Example:
for i in range(5):
    print(i)
________________________________________
Q8. Purpose of range() function in a for loop
Generates a sequence of numbers. Example: range(1, 5) produces 1,2,3,4
________________________________________
Q9. What is a function? Why use functions?
A function is a reusable block of code to perform a task.
Benefits: modularity, readability, code reuse.
________________________________________
Q10. Difference between function with parameters and without parameters
•	With parameters: accepts input values 
def add(a, b):
    return a+b
•	Without parameters: no input needed 
def greet():
    print("Hello")
________________________________________
Python Problem Solving
PS Q1. Sum of Even and Odd Numbers
•	Example: 
even = 0
odd = 0
for i in range(1, 6):
    if i % 2 == 0:
        even += i
    else:
        odd += i
print(even, odd)
Output: 6 9
________________________________________
PS Q2. Count Vowels in a String
text = "hello"
count = 0
for ch in text:
    if ch in "aeiou":
        count += 1
print(count)
Output: 2
________________________________________
PS Q3. Count Vowels & Consonants
text = "hello"
vowels = 0
consonants = 0
for ch in text:
    if ch in "aeiou":
        vowels += 1
    else:
        consonants += 1
print(vowels, consonants)
Output: 2 3

