import random as rd

A = [rd.randint(-100, 100) for x in range(5)]
A2 = [x for x in A]

max_el = max(A2)
min_el = min(A2)

for i in range(len(A2)):
    if A2[i] == max_el:
        A2[i] = min_el
    elif A2[i] == min_el:
        A2[i] = max_el


print(A)
print(A2)
print("max_el:", max_el)
print("min_el:", min_el)
