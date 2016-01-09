require 'http'

class GetBillData
  def self.call
    HTTP.get("http://safe-plains-5453.herokuapp.com/bill.json").to_s
  end
end