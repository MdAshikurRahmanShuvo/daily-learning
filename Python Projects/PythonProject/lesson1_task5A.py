#a
cube=lambda x:x**3
print(cube(5))

#b
sen=lambda a,b:f"{a} {b}"
res=sen("ash","ik")
print(res)

#c
number=[15,58,-98,0,-56,34,98,-8]
resu=list(filter(lambda a:a>0,number))
print(f"Positive Numbers are : {resu}")



#d
resu2=list(map(lambda a:a**2,number))
print(f"After Square : {resu2}")