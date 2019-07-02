array1 = [123,42,45]
array2 = [12,4,2,5,6]

result_array = array1.map.with_index  { |el, idx| [array1[idx], array2[idx]] }

result_array

