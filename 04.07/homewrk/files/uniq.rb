file = File.open('numbers.txt', "r")
data = file.read
file.close
data = data.split(" ")
uniq_arr = []
data.map do |el|
  if !uniq_arr.include?(el)
    uniq_arr << el
  end
end
File.write('uniq_numbers.txt', uniq_arr.join(" "))
