products=[
    {"name":"Chair","price":1800,"quantity":5,"category":"Furniture"},
    {"name":"Paper","price":100,"quantity":10,"category":"Stationary"},
    {"name":"Potato","price":20,"quantity":20,"category":"Food"},
    {"name":"table","price":2500,"quantity":2,"category":"Furniture"}
]
#1
for product in products:
    print(product["name"])

#2
expensive=[expen for expen in products if expen["price"]>1000]
print(expensive)

#3
total= sum(prod["price"] * prod["quantity"] for prod in products )
print(f"Total Inventory Value : {total}")

#4

# price বের করার function
def get_price(product):
    return product["price"]

# sort
sorted_products = sorted(products, key=get_price)

for product in sorted_products:
    print(product)