

class Game 
  attr_reader :name,
              :cost,
              :national_draw

  def initialize(name, cost, national = false)
    @name = name
    @cost = cost
    @national_draw = national
  end

  def national_draw?
    @national_draw
  end

  
end