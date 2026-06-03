'''class car:
    def __init__(self):
        print("Hello Car Lovers")


car1=car()
car2=car()'''



'''
class car:
    def __init__(self,name,model):
        self.name=name
        self.model=model


car1=car("Toyota","x-Corola")
car2=car("Nissan","Jeep")
print("Hello",car1.name,"-",car1.model,"Lovers")
print("Hello",car2.name,"-",car2.model,"Lovers")

'''


''' Simple OOP
class Student:
    def __init__(self,name,roll,cgpa):
        self.name=name
        self.roll=roll
        self.cgpa=cgpa
    def Show(self):
        print("Student Name : ",self.name)
        print("Student ID : ", self.roll)
        print("Student Name : ", self.cgpa)

s1=Student("Ashik","221-15-5633","3.33")
s2=Student("Shuvo","221-15-5634","3.27")
s3=Student("Shobug","221-15-5635","2.87")
#s1.Show()
#s2.Show()
#s3.Show()
student_list=[s1,s2]
for i in student_list:
    i.Show()


'''




'''
class Student:
    def __init__(self,name,roll,cgpa):
        self.name=name
        self.roll=roll
        self.cgpa=cgpa
    def show(self):
        print("Name : ",self.name)
        print("Roll : ", self.roll)
        print("CGPA : ", self.cgpa)

students_list=[]
while True:
    name=input("Enter Student Name : ")
    roll=input("Enter Student Roll : ")
    cgpa=float(input("Enter CGPA : "))
    student=Student(name,roll,cgpa)
    students_list.append(student)
    a=input("You Want to input more (y/n) : ")
    if(a=='n' or a=='N'):
        break
b=0
for i in students_list:
    b+=1
    print("Serial Number : ",b)
    i.show()
    print("\n")
    
'''





class Student:
    def __init__(self,name,roll,cgpa):
        self.name=name
        self.roll=roll
        self.cgpa=cgpa

    def show_student_details(self):
        print("Name : ",self.name)
        print("CGPA : ", self.cgpa)


student_list=[]
while True:
    b = 0
    c=input("Enter Your Choice (Add,Update,Delete,Show,Exit) : ")
    c.lower()
    if(c=='exit'):
        break
    elif(c=='add'):
        print("Enter Student Details ")
        name=input("Enter Student Name : ")
        roll=input("Enter Student ID : ")
        cgpa=float(input("Enter Student CGPA : "))
        student=Student(name,roll,cgpa)
        student_list.append(student)
    elif(c=='show'):

        for i in student_list:
            print("Student ID : ",i.roll)
            i.show_student_details()
    elif(c=='delete'):
        e=0
        d=input("Enter Student ID : ")
        for i in student_list:
            if(i.roll==d):
                student_list.pop(e)
                break
            e += 1
