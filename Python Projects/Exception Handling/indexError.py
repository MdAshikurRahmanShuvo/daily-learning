number=[15,78,61,69,34,5]
i=int(input("Enter index Number : "))
try:
    print(f"{i} index value is : {number[i]}")
except IndexError:
    print("Your Entered Index is out of range")
