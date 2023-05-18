class House
  attr_reader :price, :address, :rooms
  def initialize(price, address)
    @price = price.delete("$").to_i
    @address = address
    @rooms = []
  end

  def add_room(room)
    @rooms.push(room)
  end

  def above_market_average?
    @price > 500000
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
      house_area.push(room.area)
    end
    house_area.sum
  end

  def details
    {"price" => @price, "address" => @address}
  end

  def price_per_square_foot
    price.fdiv(area).round(2)
  end

  def rooms_sorted_by_area
    @rooms.sort do |room|
      room.area
    end
  end
end

