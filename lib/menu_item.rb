require_relative 'food'

class MenuItem

  attr_accessor :line_item_list, :total_cost

  def initialize
    @line_item_list = []
    @total_cost = 0
  end

  def add_order(food, quantity)
    @line_item_list << [food.name, quantity, food.cost*quantity]
    return @line_item_list
  end

  def food_item_list
    @line_line_list
  end

  def food_item_count
    @line_item_list.count
  end

  def receive_total
    @total_cost
  end

end
