class ArrayIterator

  def initialize
    @arr = Array.new
    @num = 0
  end

  def arr_while
    while @arr.length < 50
      @arr.push(@num += 1)
    end
    p @arr
  end

  def arr_each
    @arr.each do |i|
      @arr[0].upto(@arr[50]) do
      @arr.push(@num += 1)
      end
    end
    p @arr
  end

  def arr_map
    @arr.map do |i|
      i + 1 while i < 50
    end
  end
end