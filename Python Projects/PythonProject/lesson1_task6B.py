# একটা function লেখো create_product(name, price, quantity) যেটা:
# - name খালি হলে ValueError raise করবে
# - price <= 0 হলে ValueError raise করবে
# - quantity < 0 হলে ValueError raise করবে
# - সব ঠিক থাকলে product dictionary return করবে
from typing import final


# Test করো:
# create_product("Chair", 2500, 5)  → {'name': 'Chair', 'price': 2500, 'quantity': 5}
# create_product("", 2500, 5)       → Error: নাম খালি হতে পারে না
# create_product("Chair", -100, 5)  → Error: দাম শূন্যের বেশি হতে হবে
# create_product("Chair", 2500, -1) → Error: পরিমাণ ঋণাত্মক হতে পারে না


def create_product(name, price, quantity):
    if name=="":
        raise ValueError("নাম খালি হতে পারে না")
    if price <=0:
        raise ValueError("দাম শূন্যের বেশি হতে হবে")
    if quantity<0:
        raise ValueError("পরিমাণ ঋণাত্মক হতে পারে না")
    return {
        'name': name,
        'price': price,
        'quantity': quantity
    }


try:
    p1=create_product("Chair", 2500, 5)
    print(f"{p1}")
except ValueError as v:
    print(f"Error: {v}")
try:
    p2 = create_product("", 2500, 5)
    print(f"{p2}")
except ValueError as v:
    print(f"Error: {v}")
try:
    p3 = create_product("Chair", -100, 5)
    print(f"{p3}")
except ValueError as v:
    print(f"Error: {v}")
try:
    p4 = create_product("Chair", 2500, -1)
    print(f"{p4}")
except ValueError as v:
    print(f"Error: {v}")



#use loop
'''

test_cases = [
    ("Chair", 2500, 5),
    ("", 2500, 5),
    ("Chair", -100, 5),
    ("Chair", 2500, -1),
]

for name, price, quantity in test_cases:
    try:
        product = create_product(name, price, quantity)
        print(product)
    except ValueError as v:
        print(f"Error: {v}")

'''