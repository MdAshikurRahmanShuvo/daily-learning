numbers=[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
even_numbers=list(filter(lambda z:z%2==0,numbers))
print(even_numbers)
odd_numbers=list(filter(lambda x:x%2!=0,numbers))
print(odd_numbers)