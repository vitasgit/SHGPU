import random as rd

arr = [
        [rd.randint(-30, 45) for x in range(7)],
        [rd.randint(-30, 45) for x in range(7)],
        [rd.randint(-30, 45) for x in range(7)],
        [rd.randint(-30, 45) for x in range(7)],
        [rd.randint(-30, 45) for x in range(7)],
        [rd.randint(-30, 45) for x in range(7)],
        [rd.randint(-30, 45) for x in range(7)],
        [rd.randint(-30, 45) for x in range(7)],
        [rd.randint(-30, 45) for x in range(7)],
        [rd.randint(-30, 45) for x in range(7)]
    ]

minimum = arr[0][0]
print("Исходный массив:")
for i in range(10):
    for j in range(7):
        print(arr[i][j], end="\t")
        if arr[i][j] < minimum:
            minimum = arr[i][j]
    print()

print()
print("Минимальный элемент: ", minimum)
print()

print("Форматиированный массив:")
for i in range(10):
    for j in range(7):
        arr[i][j] += minimum
        print(arr[i][j], end="\t")
    print()

 
