def Number(func):
    def wrapper(*args, **kwargs):
        print("Function Start")
        res = func(*args, **kwargs)   # মূল ফাংশনকে কল করে রেজাল্ট res-এ রাখা হলো
        print(f"Subtraction inside decorator: {res}") # resu-এর বদলে res হবে
        print("Function End")
        return res                     # রেজাল্টটি রিটার্ন করা হলো
    return wrapper

@Number
def Subtraction(a, b):
    return a - b                      # সরাসরি বিয়োগফল রিটার্ন করা হলো

# ফাংশন কল
result = Subtraction(10, 3)
print(f"Final Subtraction Output: {result}")