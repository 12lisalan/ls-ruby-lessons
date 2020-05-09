arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]
# without modifying the original array, use the map method to return a new array
# identical in structure to the original but where the value of each integer is
# incremented by 1
new_arr = arr.map do |hash|
   hash_arr = hash.map do |k,v|
    v += 1
    [k,v]
  end
  hash_arr.to_h
end
p new_arr

# use a combination of methods, including either the select or reject method,
# to return a new array identical in structure to the original but containing
# only the integers that are multiples of 3
arr2 = [[2], [3, 5, 7], [9], [11, 13, 15]]
new_arr2 = arr2.map do |sub_arr|
  multiples_of_3_arr = sub_arr.select do |int|
    int % 3 == 0
  end
end
p new_arr2