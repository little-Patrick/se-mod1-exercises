

class Contestant 
  attr_reader :full_name,
              :age,
              :state_of_residence,
              :spending_money,
              :game_interests

  def initialize(contestant)
    @full_name = "#{contestant[:first_name]} #{contestant[:last_name]}"
    @age = contestant[:age]
    @state_of_residence = contestant[:state_of_residence]
    @spending_money = contestant[:spending_money]
    @out_of_state = @state_of_residence != "CO"
    @game_interests = []
  end

  def out_of_state?
    @out_of_state
  end

  def add_game_interest(game)
    @game_interests << game
  end
end