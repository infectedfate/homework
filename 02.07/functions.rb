class ImitateArray

  attr_accessor :arr

  def initialize(array)
    @arr = array
  end

  def im_select

  end

  def im_count(element)
    count = 0
    arr.each do |i|
      count =+ 1 if i == element
    end
  end

  def im_find(element)
    arr.each_with_index do |el, index|
      puts "#{el} - #{index}" if el == element
    end 
  end

  def im_max
    num = arr[0]
    arr.each do |i|
      if i > num
        num = i
      end
    end
    num
  end

  def im_flatten

  end

  def im_reverse
    
  end
    
end