require "./lib/employee"

class Ceo < Employee
  attr_reader :base_salary,
    :bonus

  def initialize(base_salary, bonus)
    @base_salary = base_salary
    @bonus = bonus
    super(@name, @id)
    @name = name
    @id = id
  end
end
