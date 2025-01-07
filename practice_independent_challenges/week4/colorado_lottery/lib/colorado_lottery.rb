

class ColoradoLottery
  attr_reader :registered_contestants,
              :current_contestants,
              :winners
              
  def initialize()
    @registered_contestants = {}
    @current_contestants = {}
    @winners = []
  end

  def interested_and_18?(contestant, game)
    contestant.age >= 18 && contestant.game_interests.include?(game.name) ? true : false
  end

  def can_register?(contestant, game)
    if game.national_draw? && interested_and_18?(contestant, game)
      true
    elsif !contestant.out_of_state? && interested_and_18?(contestant, game)
      true
    else
      false
    end
  end
end