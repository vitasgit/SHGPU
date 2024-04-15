import random
A = []
A2 = []
N = int(input("Введите N: "))
K = int(input("Введите K: "))
huge_K = 0
less_K = 0
equal_K = 0

for i in range(N):
    random_num = random.randint(-20,20)
    A.append(random_num)

for i in A:
    if i > K: huge_K += 1
    if i < K: less_K += 1
    if i == K: equal_K += 1
    
for i in A:
    if i > K:
        A2.append(K)
    else:
        A2.append(i)

sum_div_K = sum([x for x in A if x % K == 0])

print("Исходный:", A)
print("Форматированный:", A2)
print("Сумма кратных K:", sum_div_K)
print("Больше K:", huge_K)
print("Меньше K:", less_K)
print("Равно K:", equal_K)

