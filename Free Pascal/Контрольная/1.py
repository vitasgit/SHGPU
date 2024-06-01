brands = ['Acer', 'Asus', 'Lenovo', 'Dell', 'HP']
N = int(input("Введите кол-во: "))

catalog = []
for i in range(N):
    print(f"\nВведите характеристики ноутбука {i+1}:")

    brand = input("Введите марку ноутбука (Acer, Asus, Lenovo, Dell, HP): ")
    ram = int(input("Введите ОЗУ в ГБ: "))
    processor = float(input("Частота процессора в ГЦ: "))
    price = int(input("Цена ноутбука: "))

    laptop = {"Марка": brand, "ОЗУ": ram, "Процессор": processor, "Цена": price}
    catalog.append(laptop)

with open('katalog.txt', 'w') as file:
    file.write("Каталог ноутбуков:\n")
    for i in range(len(catalog)):
        laptop = catalog[i]
        file.write(f"{i+1}) {laptop['Марка']}, {laptop['ОЗУ']} ГБ, {laptop['Процессор']} ГЦ, {laptop['Цена']} Рублей\n")

best_laptop = None
max_k = 0

for laptop in catalog:
    k = ((laptop["ОЗУ"] + laptop["Процессор"])) / laptop["Цена"]
    if k > max_k:
        max_k = k
        best_laptop = laptop

with open('rez.txt', 'w') as file:
    file.write("Лучший ноутбук:\n")
    file.write(f"Марка: {best_laptop['Марка']}\n")
    file.write(f"Объем оперативной памяти: {best_laptop['ОЗУ']} ГБ\n")
    file.write(f"Скорость процессора: {best_laptop['Процессор']} GHz\n")
    file.write(f"Цена: {best_laptop['Цена']} Рублей\n")
