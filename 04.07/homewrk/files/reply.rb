#def reply(document)
  file = File.open('numbers.txt', "r")
  data = file.read
  file.close
  data = data.split(" ")
  data.sort!
  puts data.combination(2).any? {|el1, el2| el1 == el2 }
#end

