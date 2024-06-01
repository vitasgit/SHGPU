import random as rd

arr = [
        [rd.randint(-5,5) for x in range(7)],
        [rd.randint(-5,5) for x in range(7)],
        [rd.randint(-5,5) for x in range(7)],
        [rd.randint(-5,5) for x in range(7)],
        [rd.randint(-5,5) for x in range(7)]
    ]

count = 0
for i in arr:
    for j in i:
        print(j, end="\t")
        if j == 0:
            count += 1
    print()

print("Кол-во нулей: ", count)

