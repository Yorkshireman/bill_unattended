require 'spec_helper'
require_relative '../lib/services/get_bill_data'
require_relative './support/test_json'

describe GetBillData do
  let(:subject){ GetBillData }

  it 'provides a hash of data from an endpoint' do
    allow(subject).to receive(:call).and_return TestJson.data 
    response = subject.call
    expect(response).to eq TestJson.data
    expect(response).to be_a Hash
  end
end