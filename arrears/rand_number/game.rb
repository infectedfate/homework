puts "Игра ‘Угадай число’."
number = (1 + rand(99)).to_s
retries = 3
count = 1
puts "Введите количество попыток"
retries = gets.to_i
puts "Введи число от 0 до 100 или quit для выхода."
puts "Есть #{retries.to_s} попытки."
loop {
  break if count == (retries + 1)
  attempt = gets.chomp
  print "Попытка #{count.to_s}."
  case attempt
  when number
    puts "Угадал! Это число " + number.to_s
    puts "Еще попытку?"
    break
  when 'quit'
    puts "Выходим из игры."
    puts "Правильно было "+ number.to_s
    break
  else
    if attempt > number
      puts "Меньше"
    else
      puts "Больше"
    end
  end
  count += 1
}
