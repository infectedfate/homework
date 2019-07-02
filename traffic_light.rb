def menu
  loop do
    info
    choice = gets.to_i

    case choice
    when 1 then puts "Поехали\n"
    when 2 then puts "Внимание\n"
    when 3 then puts "Стоп\n"
    when 0 then break
    end
  end
end

def info  
  puts "Выберите цвет"
  puts '1. Зеленый'
  puts '2. Желтый'
  puts '3. Красный'
  puts '0. Выйти'
end

menu