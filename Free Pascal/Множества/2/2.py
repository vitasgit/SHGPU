import random
nums = set(random.sample(range(1, 6), 3))
print("загаданные числа: ", *nums)

print("Введите число:")
num = int(input())
while True:
    if num < 1 or num > 5:
        print("число вне диапазона")
    elif num in nums:
        print("Угадано")
    elif num not in nums:
        print("Неугадано")
    num = int(input())
    
