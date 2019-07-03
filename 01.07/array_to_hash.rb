arr = [:foo, nil, :foo, "foo", 5, 'bar', :foo, 'banana', 'milk', 12, :foo, 'bar', 34, 5, 'banana', 'milk', nil, 12, 45, 'milk']
result_hash = {}

arr.uniq.each do |element|
  result_hash[element] = arr.count(element)
end

print result_hash