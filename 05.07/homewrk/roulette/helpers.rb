module Helpers
  
  def have_money?
    @money != 0 || @money < 0
  end
    
  def enought_money?
    @money >= @bet
  end
    
  def rate_in_range?
    @rate >= 0 && @rate <= 36 
  end
    
  def return_money
    @money += @bet
  end
end