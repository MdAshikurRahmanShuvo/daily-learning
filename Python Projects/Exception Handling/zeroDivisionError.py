def division(a,b):
    try:
        print(f"{a} / {b} = {a/b}")
    except ZeroDivisionError:
        print("Can't Divided by Zero")

res=division(5,7)

