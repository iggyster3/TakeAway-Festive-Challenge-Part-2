require_relative 'menu_item'

class Orders

  attr_accessor :total_order

  def initialize(menu_item)
    @total_menu_item = []
    @total_order = 0
  end

  def total_orders(menu_item)
    @total_menu_item << menu_item.food_item_list
  end

  def calculate_total_cost
    @total_menu_item.flatten!
    @total_order = @total_menu_item[2].to_i + @total_menu_item[5].to_i
    return @total_cost
  end

  def are_total_orders_correct?
    true
  end

end
