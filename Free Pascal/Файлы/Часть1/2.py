path = input("Введите имя нового файла: ") + ".txt"
with open('file.txt', 'r') as file:
    data = file.read()
    print(data)

with open(path, 'w') as new_file:
    new_file.write(data)



