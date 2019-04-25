A = [[1, 0.3], [2, 0.6], [3, 1], [4, 0.7], [5, 0.2]]
B = [[10, 0.5], [11, 1], [12, 0.5]]

res = {}

for k1, v1 in A:
    for k2, v2 in B:
        key = k1 + k2
        if key in res:
            res[key].append(min(v1, v2))
        else:
            res[key] = [min(v1, v2)]

print(res)
print()

for key, value in res.items():
    res[key] = max(value)

res_arr = [ [k,v] for k, v in res.items() ]
print(res_arr)
