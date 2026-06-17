product={
    "name":"chair",
    "price":1500,
    "quantity":6
}
# শুধু keys
for key in product:
    print(key)
# শুধু values
for value in product.values():
    print(value)
# keys এবং values একসাথে
for key,value in product.items():
    print(f"{key} : {value}")