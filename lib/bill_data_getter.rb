require 'http'

class BillDataGetter
  def self.call
    HTTP.get("http://safe-plains-5453.herokuapp.com/bill.json").to_s
  end
end