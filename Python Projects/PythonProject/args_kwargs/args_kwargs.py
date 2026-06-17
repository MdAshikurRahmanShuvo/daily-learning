def show(*numbers,**info):
    for i in numbers:
        print(i)
    for key,value in info.items():
        print(f"{key} : {value}")


show(1,2,3,4,name="Ashik",age=25,department="CSE")
