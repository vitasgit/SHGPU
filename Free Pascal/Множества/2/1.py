s = input().lower()
s2 = ""
a = "аеёиоуыэюя"
b = "бвгджзйклмнпрстфхцчшщ"

count_a = 0
count_b = 0

for i in s:
    if i in a:
        count_a += 1
    elif i in b:
        count_b += 1
        
for i in range(len(s)-1):
    if s[i] != s[i+1]:
        s2 += s[i]

if s[-1] != s2[-1]:
    s2 += s[-1]

if count_a > count_b:
    print("гласных больше")
elif count_a < count_b:
    print("согласных больше")
else:
    print("гласных и согласных одинаковое количество")

print("кол-во гласных: ", count_a)
print("кол-во согласных: ", count_b)
print(f"форматированная строка: ", s2)
