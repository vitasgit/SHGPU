num = input()
with open("file.txt", "a") as file:
    while True:
        if num == "5":
            break
        
        file.write(num + "\n")
        num = input()

file.close()
