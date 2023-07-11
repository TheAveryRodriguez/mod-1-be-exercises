class Wizard
  attr_reader :name
  attr_accessor :bearded

  def initialize(name, bearded = {bearded: true})
    # require 'pry';binding.pry
    @name = name
    @bearded = bearded[:bearded]
  end

  def bearded?
    @bearded
  end

  def incantation(x)
    "sudo #{x}"
  end
end
