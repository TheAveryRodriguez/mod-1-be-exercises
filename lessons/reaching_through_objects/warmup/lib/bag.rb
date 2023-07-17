class Bag
  attr_reader :candies

  def initialize
    @candies = []
  end

  def empty?
    @candies.count == 0
  end

  def count
    @candies.size
  end

  def add_candy(candy)
    @candies << candy
  end

  def contains?(candy_type)
    # @candies.any? { |candy| candy.type == candy_type }
    # These are equivilant
    @candies.each do |candy|
      if candy.type == candy_type
        return true
      end
    end
    false
  end
end
