# Write a function, `nearest_larger(arr, i)` which takes an array and an
# index.  The function should return another index, `j`: this should
# satisfy:
#
# (a) `arr[i] < arr[j]`, AND
# (b) there is no `j2` closer to `i` than `j` where `arr[i] < arr[j2]`.
#
# In case of ties (see example below), choose the earliest (left-most)
# of the two indices. If no number in `arr` is larger than `arr[i]`,
# return `nil`.
#
# Difficulty: 2/5

# (a) `arr[i] < arr[j]`, AND
# (b) there is no `j2` closer to `i` than `j` where `arr[i] < arr[j2]`.

def nearest_larger(arr, i):
    closest = len(arr)
    result = None
    for idx, n in enumerate(arr):
        if n < arr[i] and abs(i - idx) < closest and i != idx:
            closest = abs(i - idx)
            result = idx
    return result

num = nearest_larger([1, 4, 6, 8, 1], 2)
print(num)
print("Answer should be 1")
num = nearest_larger([0, 4, 6, 8, 1], 4)
print(num)
print("Answer should be 0")
