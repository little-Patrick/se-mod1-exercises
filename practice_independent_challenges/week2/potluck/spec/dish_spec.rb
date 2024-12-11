require './lib/dish'


RSpec.describe Dish do

  before(:each) do
    @dish = Dish.new("Couscous Salad", :appetizer)
  end
    it 'is an instance' do
      expect(@dish).to be_a Dish
    end

    it 'has a name' do
      expect(@dish.name).to eq('Couscous Salad')
    end

    it 'has category' do
      expect(@dish.category).to eq(:appetizer)
    end
end