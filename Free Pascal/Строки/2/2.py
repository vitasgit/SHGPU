s = input("Введите строку: ")
s2 = ""

punctuations = [".", ",", ";", ":", "!", "?"]

for i in range(len(s)-1):
    if s[i] in punctuations and s[i+1] != " ":
        s2 += s[i] + " "
    else:
        s2 += s[i]
        
s2 += s[-1]
print(s)
print(s2)
