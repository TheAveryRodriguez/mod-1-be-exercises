class Attendee
  attr_reader :id, :first_name, :last_name, :zipcode
  def initialize(id, first_name, last_name, zipcode)
    @id = id
    @first_name = first_name
    @last_name = last_name
    @zipcode = zipcode
  end

  def name
    name = @first_name + " " + @last_name
  end
end
