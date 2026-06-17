import time

def measure_time(func):
    def wrapper(*args, **kwargs):
        start = time.time()
        result = func(*args, **kwargs)
        end = time.time()
        print(f"⏱️ সময় লাগলো: {end - start:.4f} সেকেন্ড")
        return result
    return wrapper

@measure_time
def slow_function():
    time.sleep(1)  # ১ সেকেন্ড অপেক্ষা
    print("কাজ শেষ!")

slow_function()