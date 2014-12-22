class Menu
  attr_reader :menu_list

  def initialize
    @menu_list = []
  end

  def add_menu(food)
    @menu_list << food
  end

end
