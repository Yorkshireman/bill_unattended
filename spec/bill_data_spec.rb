require 'spec_helper'
require 'bill'
require_relative '../lib/services/get_bill_data'
require_relative './support/test_data_hash'

describe Bill do
  let(:test_data_hash){ TestDataHash.data }
  before(:each){ allow(GetBillData).to receive(:call).and_return test_data_hash }

  it 'provides a hash of bill data' do
    expect(subject.data).to eq test_data_hash
    expect(subject.data).to be_a Hash
  end
end