require_relative './services/get_bill_data'
require_relative './services/extract_data'

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
              :call_charges_total,
              :sky_store_rentals,
              :sky_store_buy_and_keep,
              :sky_store_total

  def initialize(get_bill_data=GetBillData, extract=ExtractData)
    @data =                   get_bill_data.call
    @generated_on_date =      extract.generated_on_date(data)
    @due_on_date =            extract.due_on_date(data)
    @from_date =              extract.from_date(data)
    @to_date =                extract.to_date(data)
    @grand_total =            extract.grand_total(data)
    @subscriptions =          extract.subscriptions(data)
    @subscriptions_total=     extract.subscriptions_total(data)
    @call_charges =           extract.call_charges(data)
    @call_charges_total =     extract.call_charges_total(data)
    @sky_store_rentals =      extract.sky_store_rentals(data)
    @sky_store_buy_and_keep = extract.sky_store_buy_and_keep(data)
    @sky_store_total =        extract.sky_store_total(data)
  end
end