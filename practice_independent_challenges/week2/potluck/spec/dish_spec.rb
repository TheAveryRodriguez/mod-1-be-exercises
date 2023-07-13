require "rspec"
require "./lib/dish"

describe Dish do
  describe "initialize" do
    it "is an instance of dish" do
      dish = Dish.new("Couscous Salad", :appetizer)

      expect(dish).to be_a(Dish)
    end

    it "is has a name" do
      dish = Dish.new("Couscous Salad", :appetizer)

      expect(dish.name).to eq("Couscous Salad")
    end
  end
end
