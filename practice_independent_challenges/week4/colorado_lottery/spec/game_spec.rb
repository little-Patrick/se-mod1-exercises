
require './spec/spec_helper.rb'


RSpec.describe Contestant do
  before(:each) do
    @pick_4 = Game.new('Pick 4', 2)
    @mega_millions = Game.new('Mega Millions', 5, true)
  end

  describe 'initialize' do
    it 'exists' do
      expect(@mega_millions).to be_an_instance_of(Game)
    end
    
    it 'has name' do
      expect(@mega_millions.name).to eq('Mega Millions')
    end

    it 'has cost' do
      expect(@mega_millions.cost).to eq(5)
    end

    it 'is national draw?' do
      expect(@mega_millions.national_draw?).to eq(true)
      expect(@pick_4.national_draw?).to eq(false)
    end
  end
end