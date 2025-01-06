

class Dock 
  attr_reader :name,
              :max_rental_time,
              :rental_log

  def initialize(name, time)
    @name = name
    @max_rental_time = time
    @rental_log = {}
  end

  def rent(boat, person)
    boat.add_hour
    boat.rent
    @rental_log[boat] = person
  end

  def charge(boat)
    charge = {}
    if @max_rental_time >= boat.hours_rented
      charge[:card_number] = @rental_log[boat].credit_card_number
      charge[:amount] = boat.price_per_hour * boat.hours_rented
    else
      charge[:card_number] = @rental_log[boat].credit_card_number
      charge[:amount] = boat.price_per_hour * @max_rental_time
    end
    return charge
  end

  def return_boat(boat)
    binding.pry
    boat.hours_rented = 0 
    boat.rented = false
    @rental
  end
end