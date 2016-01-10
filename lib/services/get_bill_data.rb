require 'http'

class GetBillData
  def self.call
    JSON.parse(HTTP.get("http://safe-plains-5453.herokuapp.com/bill.json"))
  end
end