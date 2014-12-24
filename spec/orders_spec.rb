require 'orders'
require 'menu_item'
require 'food'

describe Orders do

  let(:menu_item){MenuItem.new}
  let(:orders){Orders.new(menu_item)}
  let(:food){FoodDish.new}

  it 'should receive a menu items' do
    menu_item.add_order(food, 1)
    expect(orders.total_orders(menu_item).count).to eq(1)
  end

  it 'should be able to calculate total cost' do
    expect(orders.calculate_total_cost).to eq(nil)
  end

end
