puts "Введите цвет"
color = gets.chomp!
if !color.empty?
  if color == "красный"
    puts "Стоп"
  elsif color == "желтый"
    puts "Внимание"
  elsif color == "зеленый"
    puts "Поехали"
  else
    puts "Введено неверное значение"
  end
else
  puts "Вы ничего не ввели"
end