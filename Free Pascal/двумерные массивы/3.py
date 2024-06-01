import random as rd

arr = [
        [rd.randint(4, 20) for x in range(6)],
        [rd.randint(4, 20) for x in range(6)],
        [rd.randint(4, 20) for x in range(6)],
        [rd.randint(4, 20) for x in range(6)],
        [rd.randint(4, 20) for x in range(6)],
        [rd.randint(4, 20) for x in range(6)],
        [rd.randint(4, 20) for x in range(6)]
    ]

minimum = arr[0][0]
print("Исходный массив:")
for i in range(7):
    for j in range(6):
        print(arr[i][j], end="\t")
    print()

print()
summ_odd = 0
for i in range(7):
    for j in range(1, 6, 2):
        summ_odd += arr[i][j]

print("сумма:", summ_odd)
