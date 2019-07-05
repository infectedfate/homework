#Возвращает true если есть хотя бы 2 повторяющихся значения

def duplicate(document)
  file = File.open(document, "r") do |f|
    while f.eof?
      string = f.read(20)
      array = string.split(" ")
      puts array.combination(2).any? {|el1, el2| el1 == el2 }
    end
  end
end
