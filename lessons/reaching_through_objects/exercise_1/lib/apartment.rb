class Apartment
  attr_reader :rented, :rooms
  def initialize(rented = false)
    @rented = rented
    @rooms = []
  end

  def is_rented?
    @rented
  end

  def rent
    @rented = true
  end

  def add_room(room)
    @rooms << room
  end

  def list_rooms_name_by_alphabetically
    @rooms.map { |room| room.name }.sort
  end
end
