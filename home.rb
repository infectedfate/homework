class Home
  attr_reader :address

  def initialize(a)
    address = a
  end

  def call
    # perform a process that requires @address
  end

  private

  def address=(a)
    @address = clean(a)
  end

  def clean(a)
    a.capitalize!
  end
end