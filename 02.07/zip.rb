array1 = [123,42,45,4,3,2]
array2 = [12,4,2,5,6]

if array1.length < array2.length
    result_array = array2.map.with_index  { |el, idx| [array2[idx], array1[idx]] }
else
    result_array = array1.map.with_index  { |el, idx| [array1[idx], array2[idx]] }
end
result_array

