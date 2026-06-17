def log_decorator(func):
    def wrapper(*args):
        print(f"{great_user.__name__} is start")
        catch=func(*args)
        print(f"Welcome , {catch}")
        print(f"{great_user.__name__} is closed")
        return catch
    return wrapper

@log_decorator
def great_user(a):
    return a
great_user("Ashik")

