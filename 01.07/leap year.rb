def leap?(year)
  (year % 400).zero? || ((year % 4).zero? && (year % 100).nonzero?)
end

puts 'Введите год:'

year = gets.to_i

if leap?(year)
  puts "Год високосный"
else
  puts "Год не високосный"
end