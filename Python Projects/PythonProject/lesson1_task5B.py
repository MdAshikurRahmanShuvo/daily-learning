#1
def add(*number,**oper):
    operation=oper.get('operation')
    if operation=="sum":
        return sum(number)
    elif operation=="average":
        return sum(number)/len(number)
    elif operation=="max":
        return max(number)
    elif operation=="min":
        return min(number)


print(add(1,2,3,4,5,operation="sum"))
print(add(1,2,3,4,5,operation="average"))
print(add(1,2,3,4,5,operation="max"))
print(add(1,2,3,4,5,operation="min"))




def student_list(**student):
    grade=student.get('grade')
    if grade>=40:
        student['status']='pass'
    else:
        student['status']='fail'
    return student

s1=student_list(name="Ashik",roll="5633",grade=85)
print(s1)
s2=student_list(name="Ashik Shuvo",roll="5634",grade=37)
print(s2)