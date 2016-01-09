require 'spec_helper'
require_relative '../lib/services/get_bill_data'

describe GetBillData do
  it 'retrieves a string from an endpoint' do
    response = GetBillData.call
    expect(response).to be_a String
  end
end