person={
    "name":"Ashik",
    "age":25,
    "city":"Dhaka"
}

print("Name : ",person["name"])
print(f"Age : {person["age"]}")
print(f"City : {person.get("city","No City")}")
print(f"Salary : {person.get("salary","No Salary Found")}")

print(person)
# নতুন key যোগ করা
person["phone"]="01738433042"
# Value পরিবর্তন করা
person["city"]="Barishal"
print(person)

# Multiple update একসাথে
person.update({"name":"Ashikur Rahman Shuvo","city":"Rajshahi"})
print(person)

# একটা key মুছা
del person["city"]
print(person)

# .pop() দিয়ে মুছা এবং value পাওয়া
age=person.pop("age")
print(age)
print(person)