require 'menu_item'
require 'food'

describe MenuItem do

    let(:menu_item) {MenuItem.new}
    let(:food){FoodDish.new('custard', 69)}

    it "can receive a food and quantity" do
      food.name=("Custard")
      food.cost=(69)
      menu_item.add_order(food, 1)
      expect(menu_item.food_item_count).to eq(1)
    end

    it "can receive a total cost from customer" do
      menu_item.total_cost=(69)
      expect(menu_item.receive_total).to eq(69)
    end
end
