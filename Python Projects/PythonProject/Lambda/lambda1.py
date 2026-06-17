square= lambda x:x**2
print(square(5))

add=lambda a,b:a+b
res=add(5,9)
print(res)


even_odd=lambda a:"even" if a%2==0 else "odd"
res2=even_odd(0)
print(res2)

students = [
    {"name": "রাহিম", "grade": 75},
    {"name": "করিম", "grade": 45},
    {"name": "রহিমা", "grade": 90},
]

# grade অনুযায়ী sort (কম থেকে বেশি)
sorted_students = sorted(students, key=lambda s: s["grade"])

for s in sorted_students:
    print(f"{s['name']}: {s['grade']}")
# grade অনুযায়ী sort (বেশি থেকে কম)
sorted_desc = sorted(students, key=lambda s: s["grade"], reverse=True)

for s in sorted_desc:
    print(f"{s['name']}: {s['grade']}")
# রহিমা: 90
# রাহিম: 75
# করিম: 45