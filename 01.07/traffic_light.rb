traffic_light = {'красный' => 'Стоп', 'желтый' => 'Внимание', "зеленый" => 'Поехали'}


puts "Введите цвет:"
input = gets.chomp.downcase.to_s
puts traffic_light[input]
