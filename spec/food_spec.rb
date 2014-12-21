require 'food'

describe Food do

  context "On initialize of Food" do

    let (:food) {Food.new('Custard')}

    it "can have a name" do
    expect(food.name).to eq('Custard')
    end
  end

end
