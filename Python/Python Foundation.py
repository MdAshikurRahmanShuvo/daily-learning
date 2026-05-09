# =========================================
# Python Foundation Practice File
# =========================================

# =========================================
# Task 1: Variable + Print
# =========================================

product_name = "Mouse"
qty = 5

print(product_name)
print(qty)

print("\n====================\n")

# =========================================
# Task 2: Data Types + f-string
# =========================================

product = "Keyboard"
price = 250.50

print(f"Product: {product}, Price: {price}")

print("\n====================\n")

# =========================================
# Task 3: If-Else Condition
# =========================================

qty = 15

if qty > 10:
    print("Stock OK")
else:
    print("Low Stock")

print("\n====================\n")

# =========================================
# Task 4: List + Index
# =========================================

prices = [100, 250, 500]

print(prices[1])

print("\n====================\n")

# =========================================
# Task 5: For Loop Basic
# =========================================

prices = [100, 250, 500]

for price in prices:
    print(price)

print("\n====================\n")

# =========================================
# Task 6: Loop + Sum
# =========================================

sales = [850, 2000, 650]

total = 0

for amount in sales:
    total += amount

print(f"Total Sales: {total}")

print("\n====================\n")

# =========================================
# Task 7: Loop + Max
# =========================================

sales = [850, 2000, 650]

max_sale = sales[0]

for amount in sales:
    if amount > max_sale:
        max_sale = amount

print(f"Max Sale: {max_sale}")

print("\n====================\n")

# =========================================
# Task 8: Loop + If Filter
# =========================================

sales = [1200, 850, 2000, 650, 3000]

count = 0

for amount in sales:
    if amount > 1000:
        count += 1

print(f"High Value Sales: {count}")

print("\n====================\n")

# =========================================
# Task 9: String + Loop
# =========================================

text = "ODOO"

for letter in text:
    print(letter)

print("\n====================\n")

# =========================================
# Task 10: List + append()
# =========================================

prices = [100, 250, 500]

high_prices = []

for price in prices:
    if price > 300:
        high_prices.append(price)

print(high_prices)

print("\n====================\n")

# =========================================
# Task 11: Filter to New List
# =========================================

sales = [1200, 850, 2000, 650, 3000]

sales_high = []

for amount in sales:
    if amount >= 1000:
        sales_high.append(amount)

print(sales_high)

print("\n====================\n")

# =========================================
# Task 12: Sum + Count
# =========================================

sales = [1200, 850, 2000, 650, 3000]

total = 0
count = 0

for amount in sales:
    if amount > 1000:
        total += amount
        count += 1

print(f"High Value Count: {count}")
print(f"High Value Total: {total}")

print("\n====================\n")

# =========================================
# Task 13: Search + Flag
# =========================================

sales = [1200, 850, 2000, 650, 3000]

found = False

for amount in sales:
    if amount == 2000:
        found = True
        break

if found:
    print("Found")
else:
    print("Not Found")

print("\n====================\n")

# =========================================
# Task 14: Average
# =========================================

sales = [1200, 850, 2000, 650, 3000]

total = 0

for amount in sales:
    total += amount

average = total / len(sales)

print(f"Average Sale: {average}")

print("\n====================\n")

# =========================================
# Task 15: Loop + Min
# =========================================

sales = [1200, 850, 2000, 650, 3000]

min_value = sales[0]

for amount in sales:
    if amount < min_value:
        min_value = amount

print(f"Minimum Value: {min_value}")

print("\n====================\n")