symbols = set("QWERTYUIOPASDFGHJKLZXCVBNMqwertyuiopasdfghjklzxcvbnmЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮйцукенгшщзхъфывапролджэячсмитьбю0123456789_")
s = input()
is_upper = True
is_symbol = True

if s[0] != s[0].upper():
    is_upper = False

for char in s:
    if char not in symbols:
        is_symbol = False
        break

is_valid = is_upper and is_symbol
print("В строке нет недопустимых символов" if is_valid else "В строке есть недопустимые символы")



