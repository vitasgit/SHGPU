s = input("Введите строку: ")
count = 0

for i in s:
    if i.isdigit():
        count += 1

print(f"Количество цифр: {count}")

