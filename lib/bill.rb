require 'http'
require_relative './services/get_bill_data'

class Bill
  attr_reader :data

  def initialize
    @data = GetBillData.call
  end
end