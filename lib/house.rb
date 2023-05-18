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
  
=begin
Couldn't wrap my head around how get the category
symbol to reference the room object it was in!
Daaaaang..
=end
  def rooms_from_category(category)
    # if category == @rooms
    # end
  end
end