require 'spec_helper'
require_relative '../lib/services/get_bill_data'

describe GetBillData do
  it 'retrieves a string from an endpoint' do
    expect(GetBillData.call).to be_a String
  end
end