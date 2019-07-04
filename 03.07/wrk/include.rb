def include?(element)
  @array.each do |el|
    return true if el == element
  end
end


