require "./lib/dish"
require "./lib/potluck"

describe Potluck do
  describe "initialize" do
    it "is an instance of potluck" do
      potluck = Potluck.new("7-13-18")

      expect(potluck.date).to eq("7-13-18")

      expect(potluck.dishes).to eq([])
    end
  end

  describe "#add_dish" do
    it "should add a dish to the dishes array" do
      potluck = Potluck.new("7-13-18")
      couscous_salad = Dish.new("Couscous Salad", :appetizer)
      cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)

      potluck.add_dish(couscous_salad)
      potluck.add_dish(cocktail_meatballs)

      expect(potluck.dishes).to eq([couscous_salad, cocktail_meatballs])
    end

    it "should check the length of the dishes array" do
      potluck = Potluck.new("7-13-18")
      couscous_salad = Dish.new("Couscous Salad", :appetizer)
      cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)

      potluck.add_dish(couscous_salad)
      potluck.add_dish(cocktail_meatballs)

      expect(potluck.dishes.length).to eq(2)
    end
  end

  describe "#get_all_from_category" do
    it "should return all dishes of the same category" do
      potluck = Potluck.new("7-13-18")
      couscous_salad = Dish.new("Couscous Salad", :appetizer)
      summer_pizza = Dish.new("Summer Pizza", :appetizer)
      roast_pork = Dish.new("Roast Pork", :entre)
      cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
      candy_salad = Dish.new("Candy Salad", :dessert)

      potluck.add_dish(couscous_salad)
      potluck.add_dish(summer_pizza)
      potluck.add_dish(roast_pork)
      potluck.add_dish(cocktail_meatballs)
      potluck.add_dish(candy_salad)

      expect(potluck.get_all_from_category(:appetizer)).to eq([couscous_salad, summer_pizza])

      expect(potluck.get_all_from_category(:appetizer).first).to eq(couscous_salad)

      expect(potluck.get_all_from_category(:appetizer).first.name).to eq("Couscous Salad")
    end
  end

  describe "#" do
    it "somethign" do
      potluck = Potluck.new("7-13-18")
      couscous_salad = Dish.new("Couscous Salad", :appetizer)
      summer_pizza = Dish.new("Summer Pizza", :appetizer)
      roast_pork = Dish.new("Roast Pork", :entre)
      cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
      candy_salad = Dish.new("Candy Salad", :dessert)
      bean_dip = Dish.new("Bean Dip", :appetizer)

      potluck.add_dish(couscous_salad)
      potluck.add_dish(summer_pizza)
      potluck.add_dish(roast_pork)
      potluck.add_dish(cocktail_meatballs)
      potluck.add_dish(candy_salad)
      potluck.add_dish(bean_dip)

      expect(potluck.menu).to eq({appetizer: ["Couscous Salad", "Summer Pizza", "Bean Dip"], dessert: ["Candy Salad"], entre: ["Roast Pork", "Cocktail Meatballs"]})
      expect(potluck.ratio(:appetizer)).to eq(50.0)
    end
  end
end
