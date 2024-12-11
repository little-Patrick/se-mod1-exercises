class Venue
  attr_accessor :name, :capacity, :patrons

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []
  end

  def add_patron(person)
    @patrons << person
  end

  def yell_at_patrons
    @patrons.map {|name| name.upcase}
  end
end
