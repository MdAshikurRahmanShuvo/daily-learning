student_info={
    "name":"Md Ashikur Rahman Shuvo",
    "age":23,
    "phone":"01738433042"
}

e=input("Enter Which value you want to see : ")
try:
    print(f"{e} : {student_info[e]}")
except KeyError:
    print(f"You Entered wrong Key ,which is not in the student_info")