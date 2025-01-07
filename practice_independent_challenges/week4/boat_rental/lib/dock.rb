

class Dock 
  attr_reader :name,
              :max_rental_time,
              :rental_log,
              :revenue

  def initialize(name, time)
    @name = name
    @max_rental_time = time
    @rental_log = {}
    @revenue = 0
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
    @revenue += charge[:amount]
    return charge
  end

  def return_boat(boat)
    charge(boat)
    boat.boat_return
    @rental_log.delete(boat)
  end

  def log_hour
    @rental_log.each_key {|x| x.add_hour}
  end

  def revenue
    @revenue
  end
end