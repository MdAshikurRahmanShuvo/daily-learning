students=[
    {"name":"Ashik","mark":89},
    {"name":"Toshar","mark":45},
    {"name":"Izaz","mark":97},
    {"name":"Soboj","mark":56},
    {"name":"sheab","mark":83}
]
ascending_sorted=sorted(students,key=lambda x:x["mark"])
for i in ascending_sorted:
    print(f"Name : {i['name']} , Mark : {i['mark']}")

print("\n")

descending_sorted=sorted(students,key=lambda x:x['mark'],reverse=True)
for j in descending_sorted:
    print(f"Name : {j['name']} , Mark : {j['mark']}")