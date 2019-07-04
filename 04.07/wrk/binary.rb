class Binary

  def initialize(array, key)
    @array = array
    @key = key
    @low = 0
    @high = array.size
    @middle = 0
  end

  def search
    @array.sort
    while (@low <= @high)
      @middle = @low + ((@high - @low) / 2)
      
      if @array[@middle] == @key
          return @middle
      elsif @array[@middle] < @key
          @low = @middle + 1
      else
          @high = @middle - 1
      end
    end
  end
end