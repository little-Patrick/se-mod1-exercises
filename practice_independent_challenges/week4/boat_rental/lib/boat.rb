

class Boat 
  attr_reader :type,
              :price_per_hour,
              :hours_rented,
              :rented
            
  def initialize(type, price)
    @type = type
    @price_per_hour = price
    @hours_rented = 0
    @rented = false
  end

  def add_hour
    @hours_rented += 1
  end

  def rented?
    @rented
  end

  def rent
    @rented = true
  end

  def boat_return
    @rented = false
    @hours_rented = 0
  end
end