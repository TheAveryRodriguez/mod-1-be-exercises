require "./lib/employee"

class Intern < Employee
  attr_reader :base_salary

  def initialize(base_salary)
    @base_salary = base_salary
    super(@name = "Chris", @id = 12345)
  end

  def get_coffee
    "Who got the latte?"
  end

  def benefits
    [:gets_to_get_me_coffee]
  end
end
