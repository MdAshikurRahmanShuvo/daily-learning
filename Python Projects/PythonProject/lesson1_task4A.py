

student={
    "name":"Ashik",
    "roll":"221-15-5633",
    "subjects":["MSSQL","POSTGRESQL","PYTHON","ODOO","VPS"],
    "marks":{
        "MSSQL":90,
        "POSTGRESQL":70,
        "PYTHON":97,
        "ODOO":20,
        "VPS":45
    }
}
#1
print(f"Name: {student['name']}")
print(f"Roll: {student['roll']}")
print(f"Subjects: {student['subjects']}")
print(f"Marks Dictionary: {student['marks']}")

#2
for mark in student["marks"]:
    print(mark)


#3
total=0
for mark in student["marks"].values():
    total+=mark
n=len(student["marks"])
print(f"Average is : {total/n}")


#4
new_subject="programming"
new_mark=89
student["subjects"].append(new_subject)

student["marks"][new_subject]=new_mark
print(student)

#5
highest=0
highest_subject=""
for subject,mark in student["marks"].items():
    if mark>highest:
        highest=mark
        highest_subject=subject

print(f"Highest Mark is : {highest} and Subject is {highest_subject}")
