require 'food'

describe Food do

  context "On initialize of Food" do

    let (:food) {Food.new('Custard')}

    it "can have a name" do
    expect(food.name).to eq('Custard')
    end
  end

  context "after food has been created" do

    let (:food) {Food.new('Custard')}

    it "can add more food" do
    expect(food.add_food).to eq(1)
    end
  end
end
