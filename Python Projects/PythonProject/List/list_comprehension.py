numbers=[1,2,3,4,5]
num1=[]

# Normal way
for i in numbers:
    num1.append(i*i)
print(num1)

# List Comprehension way (একলাইনে একই কাজ)
num2=[i*i for i in numbers]
print(num2)


# Condition সহ
num3=[i**2 for i in numbers if i%2==0]
print(num3)