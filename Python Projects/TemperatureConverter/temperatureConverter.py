c=0
k=0
f=0
temp=input("Select Input Type C/F/K : ")
if(temp=='C' or temp=='c'):
    c=float(input("Enter Temperature in Celsius : "))
    f=((c/5)*9)+32
    k=c+273
    print("Fahrenheit : ",f)
    print("Kelvin : ", k)
elif(temp=='f' or temp=='F'):
    f = float(input("Enter Temperature in Fahrenheit : "))
    c = ((f-32)/9)*5
    k = ((f-32)/9)*5+273
    print("Celsius : ", c)
    print("Kelvin : ", k)
elif(temp=='k' or temp=='K'):
    k = float(input("Enter Temperature in Fahrenheit : "))
    c = k-273
    f = (((k-273)/5)*9)+32
    print("Celsius : ", c)
    print("Fahrenheit : ", f)

