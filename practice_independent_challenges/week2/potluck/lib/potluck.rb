require './lib/dish.rb'

class Potluck 
  attr_accessor :date, :dishes, :add_dish, :get_all_from_category, :name

  def initialize(date)
    @date = date
    @dishes = []

  end

  def add_dish(food)
    @dishes << food
  end

  def get_all_from_category(category)
    @dishes.select {|food| food.category == category}
  end

  def menu
    @dishes.sort_by {|food| food.name}
  end

  def ratio(category)
    food_cat = @dishes.count {|food| food.category == category}
    total = @dishes.length
   (food_cat.to_f / total) * 100
  end

end