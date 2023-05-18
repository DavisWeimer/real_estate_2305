class House
  attr_reader :address, :rooms
  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
  end

  def price
    @price.delete! "$"
    @price.to_i
  end

  def add_room(room)
    @rooms.push(room)
  end

  def above_market_average?
    @price.to_i > 500000
  end


end