class House
  attr_reader :address
  def initialize(price, address)
    @price = price
    @address = address
  end

  def price
    @price.delete! "$"
    @price.to_i
  end


end