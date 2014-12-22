require 'food'

describe FoodDish do

    let (:food) {FoodDish.new(name: 'Custard', cost: 69)}

    it "can have a name" do
    expect(food.name).to eq('Custard')
    end

    it "can have a cost" do
    expect(food.cost).to eq(69)
    end

    it "can set a name" do
      expect(food.name="Salad").to eq("Salad")
    end

    it "can set a price" do
      expect(food.cost=50).to eq(50)
    end
end
