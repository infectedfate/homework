class MyHash
  attr_accessor :arr

  def initialize(array)
    @arr = array
  end

  def [](key)
    found = arr.find { |el| el.first == key }
    found ? found.last : nil
  end

  def []=(key, value)
    found = arr.find { |el| el.first == key }
    if found
      found.last = value
    else
      arr << [key, value]
    end
  end

  def keys
    arr.map(&:first)
  end

  def values
    arr.map(&:last)
  end

  def delete(key)
    arr.delete_if { |el| el.first == key }
  end

  def each
    i = 0
    while i < arr.length do
      yield(arr[i].first, arr[i].last)
      i += 1
    end
    arr
  end

  def map
    i = 0
    map_arr = []
    while i < arr.length do
      map_arr << yield(arr[i])
      i += 1
    end
    map_arr
  end
end