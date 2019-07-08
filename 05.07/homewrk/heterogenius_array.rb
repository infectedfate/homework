def heterogen_array(array)
  int_array = []
  sym_array = []
  str_array = []
  hsh_array = []
  arr_array = []

  array.each do |i|
    if i.is_a?(Integer)
      int_array << i
    elsif i.is_a?(Symbol)
      sym_array << i
    elsif i.is_a?(String)
      str_array << i
    elsif i.is_a?(Hash)
      hsh_array << i
    elsif i.is_a?(Array)
      arr_array << i
    else
      puts "В массиве неизвестный тип данных"    
    end    
  end

  p int_array
  p sym_array
  p str_array
  p hsh_array
  p arr_array
end