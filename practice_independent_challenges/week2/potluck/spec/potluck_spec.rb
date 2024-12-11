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

    it 'has dishes stored' do
      @potluck.add_dish(@couscous_salad)
      @potluck.add_dish(@cocktail_meatballs)
      expect(@potluck.dishes).to eq([@couscous_salad, @cocktail_meatballs])
    end

    it 'has length' do
      @potluck.add_dish(@couscous_salad)
      @potluck.add_dish(@cocktail_meatballs)

      expect(@potluck.dishes.length).to eq(2)
    end
end

RSpec.describe do
  before(:each) do
    @potluck = Potluck.new("7-13-18")
    @couscous_salad = Dish.new("Couscous Salad", :appetizer)
    @summer_pizza = Dish.new("Summer Pizza", :appetizer)
    @roast_pork = Dish.new("Roast Pork", :entre)
    @cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    @candy_salad = Dish.new("Candy Salad", :dessert)

    @potluck.add_dish(@couscous_salad)
    @potluck.add_dish(@summer_pizza)
    @potluck.add_dish(@roast_pork)
    @potluck.add_dish(@cocktail_meatballs)
    @potluck.add_dish(@candy_salad)
    
  end

  it 'can get category' do
    expect(@potluck.get_all_from_category(:appetizer)).to eq([@couscous_salad, @summer_pizza])
  end
  
  it 'can get first in category' do
    expect(@potluck.get_all_from_category(:appetizer).first).to eq(@couscous_salad)
  end

  it 'can grab the first name' do
    expect(@potluck.get_all_from_category(:appetizer).first.name).to eq('Couscous Salad')
  end

end