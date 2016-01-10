require_relative './services/get_bill_data'
require 'active_support'

class Bill
  attr_reader :data,
              :generated_on_date,
              :due_on_date,
              :from_date,
              :to_date,
              :grand_total,
              :subscriptions,
              :subscriptions_total,
              :call_charges,
              :call_charges_total

  def initialize
    @data =               GetBillData.call
    @generated_on_date =  data["statement"]["generated"]
    @due_on_date =        data["statement"]["due"]
    @from_date =          data["statement"]["period"]["from"]
    @to_date =            data["statement"]["period"]["to"]
    @grand_total =        data["total"]
    @subscriptions =      get_subscriptions
    @subscriptions_total= data["package"]["total"]
    @call_charges =       data["callCharges"]["calls"]
    @call_charges_total = data["callCharges"]["total"]
  end


  private

  def get_subscriptions
    data["package"]["subscriptions"].map do |item|
      item.except!("type")
    end
  end
end