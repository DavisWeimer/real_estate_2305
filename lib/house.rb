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
  
  def rooms_from_category(category)
    @rooms.find_all do |room|
      if room.category == category
        room
      end
    end
  end

  def area
    house_area = []
    @rooms.each do |room|
      house_area.push(room.length * room.width.to_i)
    end
    house_area.sum
  end

end

