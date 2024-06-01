import random as rd

a = [rd.randint(2, 30) for x in range(10)]
a2 = []
print(a)

for i in range(0, len(a)-1, 2):
    a[i], a[i+1] = a[i+1], a[i]

print(a)
 



