class Array

  def my_map
    n = 0
    arr_r = []
    while n < self.size
      arr_r << yield(self[n])
      n += 1
    end
    arr_r
  end

  def my_each
    i = 0
    while i < self.size
      yield(self[i])
      i += 1
    end
  end

end

class Yield

  attr_accessor :arr

  def initialize(array)
    @arr = array
  end 

  def my_find
    arr.my_each do |el|
      return el if yield(el) == true
    end
  end

  def my_select
    arr.my_map do |el| 
      el if yield(el) == true 
    end.compact
  end


  def my_count
    count = 0
    arr.my_each do |el|
      count += 1 if yield(el)
    end
    count
  end
  
end


arr1 = Yield.new([1,4,4,4,5,5,5,55,3,5,6,8])

p arr1.my_find { |i| i % 5 == 0 }
p arr1.my_count { |i| i == 5 }
p arr1.my_select { |i| i == 2 }
p arr1.arr.my_map { |i| i + 2 }
p arr1.arr.my_each { |i| puts i }