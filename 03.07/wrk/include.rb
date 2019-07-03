class Include

  attr_accessor :array

  def initialize(array)
    @array = array
  end

  def include?(element)
    @array.each do |el|
      return true if el == element
    end
  end

end

