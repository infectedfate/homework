#Возвращает true если есть хотя бы 2 повторяющихся значения

def duplicate(document)
  file = File.open(document, "r") do |f|
    string = f.read(200)
    string = string.split(" ")
      puts string.combination(2).any? {|el1, el2| el1 == el2 }
    end
end
