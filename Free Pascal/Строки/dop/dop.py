s = input("Введите строку: ")
letter = input("Введите символ: ").lower()

count = 0
for i in range(len(s)-1):
    if (s[i+1] == "." or s[i+1] == "!" or s[i+1] == "?") and (s[i] != "."):
        if (s[i+1] == "." or s[i+1] == "!" or s[i+1] == "?") and (s[i] != "!"):
            if (s[i+1] == "." or s[i+1] == "!" or s[i+1] == "?") and (s[i] != "?"):
                count += 1

s2 = ""
for i in s.split():
    if i[0].lower() != letter:
        s2 += i + " "
    else:
        s2 += i[::-1] + " "

print(count)
print(s2)


