numbers = []
i = 0
while i < 10000000
  numbers << rand(1000)
  i += 1
end


File.write('numbers.txt', numbers.join(" "))
