#Удаление повторяющихся элементов

def uniq(document)
  array = []
  uniq = {}
  file = File.open(document, "r") do |f|
    while string = f.read(200)
    array = string.split(" ")
    end
    array.each do |el|
      uniq[el] = nil
    end
  File.write('uniq_numbers.txt', uniq.keys.join(" "))
  end
end
