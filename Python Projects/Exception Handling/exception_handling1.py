def read_number(value):
    try:
        number = int(value)

    except ValueError:
        print("ভুল input! সংখ্যা দিন।")

    else:
        # try সফল হলে (কোনো error না হলে) এটা চলবে
        print(f"সফল! সংখ্যা হলো: {number}")

    finally:
        # সবসময় চলবে — error হোক বা না হোক
        print("Process শেষ হয়েছে।")

read_number("25")
# সফল! সংখ্যা হলো: 25
# Process শেষ হয়েছে।

read_number("abc")
# ভুল input! সংখ্যা দিন।
# Process শেষ হয়েছে।