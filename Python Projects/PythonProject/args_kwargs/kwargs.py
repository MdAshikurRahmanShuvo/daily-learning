def user_profile(**information):
    for key,value in information.items():
        print(f"{key} : {value}")

user_profile(name="Ashik",age=24,subject="CSE")


def products(**product_list):
    for key,value in product_list.items():
        print(f"{key} : {value}")

products(Product_Name ="Chair",Price=1200,Quantity=3)


