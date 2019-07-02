print "Введите температуру и шкалу (C или K):"
str = gets
exit if str.nil? or str.empty?
str.chomp!
temp, scale = str.split(" ")

temp = temp.to_f
case scale 
  when "C", "c"
    k = temp - 273.15
  when "K", "k"
    c = temp + 273.15
else
  abort "Необходимо задать С или К"
end

if k.nil?
  print "#{c} градусов С\n"
else
  print "#{k} градусов К\n"
end