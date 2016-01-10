require 'spec_helper'
require 'bill'
require_relative './support/test_data_hash'

describe Bill do
  let(:test_data_hash){ TestDataHash.data }

  it 'provides a hash of data from an endpoint' do
    # allow(subject).to receive(:call).and_return test_data_hash 
    expect(subject.data).to eq test_data_hash
    expect(subject.data).to be_a Hash
  end
end