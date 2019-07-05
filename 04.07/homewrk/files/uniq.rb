#Удаление повторяющихся элементов

def uniq(array)
  uniq = {}
  array.each do |el|
    uniq[el] = nil
  end  
  File.write('uniq_numbers.txt', uniq.keys.join(" "))
end
