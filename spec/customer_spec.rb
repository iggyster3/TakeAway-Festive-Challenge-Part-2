require 'customer'

describe Customers do

  let(:customers){Customers.new}

  context "On initialization" do

    it 'should have a name' do
    expect(customers.name).to eq("Richard")
    end

    it 'should have a default number' do
    expect(customers.number).to eq("447811042074")
    end


  context "When placing an order" do

    xit "can send a text" do
      expect(customers.confirm_order).to eq(true)
    end

    it 'should be able to take a new name' do
      expect(customers.name="Sarah").to eq("Sarah")
    end

    it 'should be able to take a new number' do
      expect(customers.number=12345).to eq(12345)
    end

    it 'should be able to calculate the delivery time' do
      expect(customers.get_delivery_time).to eq("#{Time.new.strftime("%H").to_i+1}:#{Time.new.strftime("%M")}")
    end

  end
end

end
