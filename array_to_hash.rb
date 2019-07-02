arr = [:foo, nil, :foo, "foo", 5, 'bar', :foo, 'banana', 'milk', 12, :foo, 'bar', 34, 5, 'banana', 'milk', nil, 12, 45, 'milk']
hash = {}

arr.each do |a|
  hash[a] = arr.count(a)
end

print hash