require './lib/room'
require './lib/house'

RSpec.describe House do
  describe "Iteration 2" do
    it "exists" do
      house = House.new("$400000", "123 sugar lane")
      expect(house).to be_a House
    end

    it "has a price (string to integer)" do
      house = House.new("$400000", "123 sugar lane")
      expect(house.price).to eq(400000)
    end

  end


end