class Vehicle:
    def __init__(self,brand,model,price):
        self.brand=brand
        self.model=model
        self.price=price
    def show_details(self):
        print(f"Brand : {self.brand}")
        print(f"Model : {self.model}")
        print(f"Price : {self.price}")
class Car(Vehicle):
    def __init__(self,brand,model,price,fuel_type,seats):
        super().__init__(brand,model,price)
        self.fuel_type=fuel_type
        self.seats=seats
    def show_car_info(self):
        print(f"Fuel Type : {self.fuel_type}")
        print(f"Seats : {self.seats}")
class Bike(Vehicle):
    def __init__(self,brand,model,price,engine_cc):
        super().__init__(brand,model,price)
        self.engine_cc=engine_cc
    def show_bike_info(self):
        print(f"Engine_CC : {self.engine_cc}")



vehicle1=Vehicle("Toyota","Corolla Cross",28000000)
vehicle1.show_details()
print("\n")
Car1=Car("Tesla","Model 3",39000000,"Electric(EV)",5)
Car1.show_details()
Car1.show_car_info()
print("\n")
Bike1=Bike("Yamaha","R15 v4",500000,"350 cc")
Bike1.show_details()
Bike1.show_bike_info()


