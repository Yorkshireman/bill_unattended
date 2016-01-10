require_relative './services/get_bill_data'

class Bill
  attr_reader :data,
              :generated_on_date,
              :due_on_date,
              :from_date,
              :to_date,
              :grand_total

  def initialize
    @data =               GetBillData.call
    @generated_on_date =  get_generated_on_date
    @due_on_date =        get_due_date
    @from_date =          get_from_date
    @to_date =            get_to_date
    @grand_total =        get_grand_total
  end


  private

  def get_generated_on_date
    data["statement"]["generated"]
  end

  def get_due_date
    data["statement"]["due"]
  end

  def get_from_date
    data["statement"]["period"]["from"]
  end

  def get_to_date
    data["statement"]["period"]["to"]
  end

  def get_grand_total
    data["total"]
  end
end