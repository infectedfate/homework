module MyHash

  def initialize(array)
    @arr = array
  end
  
  def get(key)
    arr = @goods.find { |e| e.include?(key) }
    arr[1]
  end
  
  def set(key, value)
    arr = @goods.find { |e| e.include?(key) }
    arr[1] = value
  end
  
  def keys
    res = []
    @goods.each { |e| res << e[1] }
    return res
  end
  
  def values
    res = []
    @goods.each { |e| res << e[0] }
    return res
  end
end