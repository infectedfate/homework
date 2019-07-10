require 'benchmark'

class Bubble

  attr_accessor :num

  def initialize
    @num = []
  end

  def bubble_sort(array)
    swapped = false
    loop do
      array.each.with_index do |el, index|
        next if index == array.length - 1
        if el > array[index + 1]
          array[index], array[index + 1] = array[index + 1], array[index]
          swapped = true
        end
      end
      break if swapped == false
      swapped = false
    end
    array
   end

   ary = [3,4,52,3,4,5,76,4,3,33,2,56,34,79,53,21,48,27,24,75,35]
   p Bubble.new.bubble_sort(ary)

  def generate_files
    generate_numbers(100000)
    File.write("10k.txt", @num.join(' '))
    generate_numbers(500000)
    File.write("50k.txt", @num.join(' '))
    generate_numbers(1000000)
    File.write("100k.txt", @num.join(' '))
  end

  def generate_numbers(count)
    numbers = []
    i = 0
    while i < count
      numbers << rand(100)
      i += 1
    end
    @num = numbers
  end

  def files_sort(file)
    string = " "
    array = []
    input = File.open(file, 'r') do |f|
    string = f.read
    array = string.split(" ")
    File.write("sort_" + file, bubble_sort(array).join(" "))
   end
  end

  def benchmark
    File.write("benchmark.txt", ) do |f|
    Benchmark.bm do |x|
        x.report { files_sort("10k.txt") }
        x.report { files_sort("50k.txt") }
        x.report { files_sort("100k.txt") }
    end
  end
end

end