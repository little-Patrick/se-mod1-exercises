require './lib/dish'
require 'rspec'

RSpec.describe Dish do

  before(:each) do
    @dish = Dish.new("Couscous Salad", :appetizer)

  it 'is an instance' do
    expect(@dish).to be_a Dish
  end

  it 'has a name' do
    expect(@dish.name).to eq('Couscous Salad')
  end

  it 'has category'
    expect(@dish.category).to eq(:appetizer)
  end
end