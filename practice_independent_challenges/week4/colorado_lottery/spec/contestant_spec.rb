require './spec/spec_helper.rb'


RSpec.describe Contestant do
  before(:each) do
    @alexander = Contestant.new({first_name: 'Alexander',
                                last_name: 'Aigiades',
                                age: 28,
                                state_of_residence: 'CO',
                                spending_money: 10})
  end

  describe 'initialize' do
    it 'exists' do
      expect(@alexander).to be_an_instance_of(Contestant)
    end
    
    it 'has name' do
      expect(@alexander.full_name).to eq("Alexander Aigiades")
    end
    
    it 'has age' do
      expect(@alexander.age).to eq(28)
    end

    it 'has state' do
      expect(@alexander.state_of_residence).to eq("CO")
    end

    it 'has money' do
      expect(@alexander.spending_money).to eq(10)
    end

    it 'is out of state?' do
      expect(@alexander.out_of_state?).to eq(false)
    end

    it 'has interests' do 
      expect(@alexander.game_interests).to eq([])
    end
  end

  describe 'methods' do
    it 'can add interest' do
      @alexander.add_game_interest('Mega Millions')
      @alexander.add_game_interest('Pick 4')
      
      expect(@alexander.game_interests).to eq(["Mega Millions", "Pick 4"])
    end
  end

end