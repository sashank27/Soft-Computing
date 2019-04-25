# y = (x-3)^2 + 2
X = [[2, 0.3], [3, 0.6], [4, 1], [5, 0.6]]

res = {}

for k, v in X:
    key = ((k-3)**2) + 2
    if key in res:
        res[key].append(v)
    else:
        res[key] = [v]

print(res)
print()

for key, value in res.items():
    res[key] = max(value)

res_arr = [ [k,v] for k, v in res.items() ]
print(res_arr)
