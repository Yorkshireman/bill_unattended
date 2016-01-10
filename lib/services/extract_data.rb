require 'active_support'

class ExtractData
  def self.generated_on_date(data)
    data["statement"]["generated"]
  end

  def self.due_on_date(data)
    data["statement"]["due"]
  end

  def self.from_date(data)
    data["statement"]["period"]["from"]
  end

  def self.to_date(data)
    data["statement"]["period"]["to"]
  end

  def self.grand_total(data)
    data["total"]
  end

  def self.subscriptions(data)
    data["package"]["subscriptions"].map{ |item| item.except!("type") }
  end

  def self.subscriptions_total(data)
    data["package"]["total"]
  end

  def self.call_charges(data)
    data["callCharges"]["calls"]
  end

  def self.call_charges_total(data)
    data["callCharges"]["total"]
  end

  def self.sky_store_rentals(data)
    data["skyStore"]["rentals"]
  end

  def self.sky_store_buy_and_keep(data)
    data["skyStore"]["buyAndKeep"]
  end

  def self.sky_store_total(data)
    data["skyStore"]["total"]
  end
end