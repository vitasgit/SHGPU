binary_list = [1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1]
optimized = []

count = 0
curr_bit = binary_list[0]

if binary_list[0] == 1:
    optimized.append(0)

for i in binary_list:
    if i == curr_bit:
        count += 1
    else:
        optimized.append(count)
        curr_bit = i
        count = 1

optimized.append(count)
print(optimized)
