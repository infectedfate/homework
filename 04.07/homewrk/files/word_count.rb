text=''
line_count = 0
lines = File.readlines("text.txt", "rb")
line_count = lines.size
text = lines.join
total_characters = text.length
word_count = text.split.length


puts "#{total_characters} characters"
puts "#{word_count} words"
puts "#{line_count} lines"