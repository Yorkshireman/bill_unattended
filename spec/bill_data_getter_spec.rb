require 'spec_helper'
require 'bill_data_getter'

describe BillDataGetter do
  it 'retrieves a string from an endpoint' do
    expect(BillDataGetter.call).to be_a String
  end
end