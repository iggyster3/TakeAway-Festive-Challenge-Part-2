class FoodDish

  attr_accessor :name, :cost

  def initialize(list={})
    @name = list.fetch(:name, "")
    @cost = list.fetch(:cost, 0)
  end

end
