require 'http'

class Bill
  attr_reader :data

  def initialize
    @data = JSON.parse(HTTP.get("http://safe-plains-5453.herokuapp.com/bill.json"))
  end
end