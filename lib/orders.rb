require_relative 'menu_item'

class Orders

  def initialize(menu_item)
    @menu_item = []
  end

  def total_orders(menu_item)
    @menu_item << menu_item.food_item_list
  end

end
