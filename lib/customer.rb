require 'twilio-ruby'

class Customers

  attr_accessor :name, :number
  attr_reader :time

  def initialize(name="Richard", number="447811042074")
    @name = name
    @number = number
  end

  def confirm_order
    @account_sid = 'AC997198c24c36ddbe2318cb4b9fa906e8'
    @auth_token = 'efa606d6956fc635d059c11bf1a0a411'
    @client = Twilio::REST::Client.new @account_sid, @auth_token
    @client.messages.create(
    from: '441332650274',
    to: @number,
    body: "Thank you #{@name} for your order. It will be delivered before#{get_delivery_time}"
    )
    true
  end

  def get_delivery_time
    @time_hour = Time.new.strftime("%H").to_i
    @time_minute = Time.new.strftime("%M")
    @time_now = "#{@time_hour}:#{@time_minute}"
  end

end
