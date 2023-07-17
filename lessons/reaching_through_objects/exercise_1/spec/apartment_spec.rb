require "./lib/room"
require "./lib/apartment"

RSpec.describe Apartment do
  describe "#exists" do
    it "exists" do
      apartment = Apartment.new

      expect(apartment).to be_a(Apartment)
    end
  end

  describe "#is_rented" do
    it "can be rented" do
      apartment = Apartment.new

      expect(apartment.is_rented?).to eq(false)

      apartment.rent

      expect(apartment.is_rented?).to eq(true)
    end
  end

  describe "#add_room" do
    it "can add rooms to an apartment" do
      apartment = Apartment.new
      bathroom = Room.new("bathroom")
      laundry = Room.new("laundry")
      kitchen = Room.new("kitchen")
      bedroom = Room.new("bedroom")

      apartment.add_room(bathroom)
      apartment.add_room(laundry)
      apartment.add_room(kitchen)
      apartment.add_room(bedroom)

      expect(apartment.rooms).to eq([bathroom, laundry, kitchen, bedroom])
      expect(apartment.list_rooms_name_by_alphabetically).to eq(["bathroom", "bedroom", "kitchen", "bedroom"])
    end
  end
end
