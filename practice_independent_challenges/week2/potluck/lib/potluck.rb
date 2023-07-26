class Potluck
  attr_reader :date, :dishes
  def initialize(date, dishes = [])
    @date = date
    @dishes = dishes
  end

  def add_dish(dish)
    @dishes.push(dish)
  end

  def get_all_from_category(category)
    @dishes.select { |dish| dish.category == category }
  end

  def menu
    categories = {}
    @dishes.each do |dish|
      categories[dish.category] ||= []
      categories[dish.category] << dish.name
    end
    categories
  end

  def ratio(category)
    total_dishes = @dishes.length
    category_dishes = @dishes.count { |dish| dish.category == category }
    (category_dishes.to_f / total_dishes) * 100
  end
end
