def add(*args):
    print(*args)
    total=sum(args)
    print(total)

add(4,5,5,6)


def greet_user(*names):
    for i in names:
        print(f"Welcome , {i}")

greet_user("Ashik","Shuvo","Mili","Mahin")
