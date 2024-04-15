N = int(input("Введите кол-во символов: "))
alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

s = ""
for i in range(N):
  s += alphabet[i]

print(s.capitalize())
print(s[::-1].capitalize())
