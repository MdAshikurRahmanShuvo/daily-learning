# একটা function লেখো safe_divide(a, b) যেটা:
# - ZeroDivisionError handle করবে
# - TypeError handle করবে (যদি number না দেয়)
# - সফল হলে result return করবে
# - finally তে সবসময় "Operation complete" print করবে

# Test করো:
# safe_divide(10, 2)   → 5.0
# safe_divide(10, 0)   → Error message
# safe_divide(10, "a") → Error message
def safe_divide(a, b):
    try:
        result = a / b
    except ZeroDivisionError:
        print("Error: শূন্য দিয়ে ভাগ করা যাবে না!")
        result = None
    except TypeError:
        print("Error: শুধু সংখ্যা দিন!")
        result = None
    finally:
        print("Operation complete")
    return result


print(safe_divide(10, 2))    # 5.0
print(safe_divide(10, 0))    # Error message + None
print(safe_divide(10, "a"))  # Error message + None