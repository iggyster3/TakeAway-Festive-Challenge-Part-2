require_relative 'menu_item'
require_relative 'customers'

class Orders

  attr_accessor :total_order, :customer_total

  def initialize(menu_item)
    @total_menu_item = []
    @customer_total = 0
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

  def get_total_from_customer(menu_item)
  @customer_total = menu_item.receive_total
  end

  def are_total_orders_correct?
    @total_cost == @customer_total
    true
  end

  def send_food(customers)

    raise RangeError.new ("You have not provided an order.") if @total_cost <=0

    return customers.confirm_order if are_total_orders_correct?

    raise RangeError.new ("You have not provided the correct amount. Sorry, no food for you.")
    true
  end

end
