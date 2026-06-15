class Product:
    def __init__(self,name,price,quantity,category):
        self.name=name
        self.price=price
        self.quantity=quantity
        self.category=category
    def get_info(self):
        print(f"Product Name : {self.name}")
        print(f"Product Price : {self.price}")
        print(f"Quantity : {self.quantity}")
        print(f"Category : {self.category}")
    def get_total_value(self):
        if self.price<=0:
            print(f" Invalid Price : {self.price}")
            return 0
        return self.price*self.quantity
    def is_expensive(self):
        if self.price*self.quantity>1000:
            return True
        else:
            return False

product1=Product("Chair",2500,6,"Furniture")
print("For Product1 : ")
product1.get_info()
print(f"Total Price is : {product1.get_total_value()}")
if product1.is_expensive():
    print(f"Product is Expensive")
else:
    print(f"Product is Cheap")
print("\n")

product2=Product("Pen",25,3,"Stationary")
print("For Product2 : ")
product2.get_info()
print(f"Total Price is : {product2.get_total_value()}")
if product2.is_expensive():
    print(f"Product is Expensive")
else:
    print(f"Product is Cheap")
print("\n")

product3=Product("Bag",1000,1,"Bag")
print("For Product3 : ")
product3.get_info()
print(f"Total Price is : {product3.get_total_value()}")
if product3.is_expensive():
    print(f"Product is Expensive")
else:
    print(f"Product is Cheap")
print("\n")

product4=Product("Scale",-30,10,"Stationary")
print("For Product4 : ")
product4.get_info()
print(f"Total Price is : {product4.get_total_value()}")
if product4.is_expensive():
    print(f"Product is Expensive")
else:
    print(f"Product is Cheap")