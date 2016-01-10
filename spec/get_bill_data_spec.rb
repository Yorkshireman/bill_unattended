require 'spec_helper'
require_relative '../lib/services/get_bill_data'
require_relative './support/test_data_hash'

describe GetBillData do
  let(:subject){ GetBillData }
  let(:test_data_hash){ TestDataHash.data }

  it 'provides a hash of data from an endpoint' do
    allow(subject).to receive(:call).and_return test_data_hash 
    response = subject.call
    expect(response).to eq test_data_hash
    expect(response).to be_a Hash
  end
end