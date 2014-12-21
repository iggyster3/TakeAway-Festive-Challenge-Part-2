require 'menu'

describe Menu do

  context "On initialize of Menu" do

    let(:menu) {Menu.new('Makers Fast OOD')}

    it "can have a name" do
      expect(menu.name).to eq('Makers Fast OOD')
    end

    it "can have a display of food on menu" do
      expect(menu.menu_display).to eq('peanuts')
    end
  end

end
