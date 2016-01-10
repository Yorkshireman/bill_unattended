require 'spec_helper'
require 'bill'
require_relative '../lib/services/get_bill_data'
require_relative './support/test_data_hash'

describe Bill do
  let(:test_data_hash){ TestDataHash.data }
  
  before :each do
    allow(GetBillData).to receive(:call).and_return test_data_hash
  end

  it 'has a hash of bill data via a http_request' do
    expect(subject.data).to eq test_data_hash
    expect(subject.data).to be_a Hash
  end

  it 'has a generated on date' do
    result = subject.generated_on_date
    expect(result).to eq test_data_hash["statement"]["generated"]
  end

  it 'has a due date' do
    result = subject.due_on_date
    expect(result).to eq test_data_hash["statement"]["due"]
  end

  xit 'has from/to period dates'
  xit 'has a bill total'
end