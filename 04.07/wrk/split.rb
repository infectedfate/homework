def mysplit(string, key)
  array_chars = []
  i = 0
  while i < string.to_s.length do
    array_chars << string[i]
    i += 1
  end
  puts array_chars

  res = []
  string = ""

  array_chars.each do |el|
    if el == key 
      res.push(string)
      string = ""
    else
      string.concat(el)
    end
  end
  puts string
  puts res
end