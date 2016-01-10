require 'http'
require_relative './services/get_bill_data'

class Bill
  attr_reader :data,
              :generated_on_date,
              :due_on_date

  def initialize
    @data = GetBillData.call
    @generated_on_date = get_generated_on_date
    @due_on_date = get_due_date
  end


  private

  def get_generated_on_date
    data["statement"]["generated"]
  end

  def get_due_date
    data["statement"]["due"]
  end
end