require 'menu'

describe Menu do

  let(:menu){Menu.new}

  it 'should receive a food object' do
    expect{menu.add_menu(menu)}.to change{menu.menu_list.count}.by (1)
  end

end
