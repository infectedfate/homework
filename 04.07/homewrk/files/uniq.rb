def uniq(array)
  uniq = {}
  array.each do |el|
    uniq[el] = nil
  end  
  uniq.keys
  File.write('uniq_numbers.txt', uniq_arr.join(" "))
end

