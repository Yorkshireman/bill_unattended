require 'spec_helper'
require_relative '../../lib/services/get_bill_data'
require_relative '../support/test_data_hash'

describe GetBillData do
  it 'returns bill data via http request' do
    result = GetBillData.call
    expect(result).to eq TestDataHash.data
  end
end