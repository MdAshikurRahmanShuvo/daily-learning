product=[
    {"name":"Chair","price":2500,"quantity":4},
    {"name":"Fan","price":1200,"quantity":2},
    {"name":"Table","price":4700,"quantity":3}
]

# সব product এর নাম দেখাও
for i in product:
    print(i["name"])


# শুধু expensive products (price > 2000)
expensive=[i for i in product if i["price"]>2000]
print(expensive)