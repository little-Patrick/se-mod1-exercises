require './lib/dish.rb'
require './lib/potluck'

RSpec.describe Dish do
  before(:each) do
    
    @potluck = Potluck.new("7-13-18")

  end


    it 'is a instance' do

      expect(@potluck).to be_a Potluck
    end

    it 'has a date' do

      expect(@potluck.date).to eq("7-13-18")
    end
    
    it 'has dish array' do
      
      expect(@potluck.dishes).to eq([])
    end

  before(:each) do
    @potluck = Potluck.new("7-13-18")
    @couscous_salad = Dish.new("Couscous Salad", :appetizer)
    @cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
  end

    it 'instance of dish' do
      expect(@couscous_salad).to be_a Dish
      expect(@cocktail_meatballs).to be_a Dish
    end

    it 'has dishes stored'
      @potluck.add_dish(@couscous_salad)
      @potluck.add_dish(@cocktail_meatballs)
      expect(@potluck.dishes).to eq(@couscous_salad, @cocktail_meatballs)
    end

    it 'has length' do
      @potluck.add_dish(@couscous_salad)
      @potluck.add_dish(@cocktail_meatballs)

      expect(@potluck.dishes.length).to eq(2)
    end
  
