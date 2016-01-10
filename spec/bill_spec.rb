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
    data = subject.data
    expect(data).to eq test_data_hash
    expect(data).to be_a Hash
  end

  it 'has a generated on date' do
    generated_on_date = subject.generated_on_date
    expect(generated_on_date).to eq test_data_hash["statement"]["generated"]
  end

  it 'has a due date' do
    due_on_date = subject.due_on_date
    expect(due_on_date).to eq test_data_hash["statement"]["due"]
  end

  it 'has a from date' do
    from_date = subject.from_date
    expect(from_date).to eq test_data_hash["statement"]["period"]["from"] 
  end

  it 'has a to date' do
    to_date = subject.to_date
    expect(to_date).to eq test_data_hash["statement"]["period"]["to"]
  end

  it 'has a grand total' do
    grand_total = subject.grand_total
    expect(grand_total).to eq test_data_hash["total"]
  end

  it "has package subscriptions array" do
    subscriptions = subject.subscriptions
    expect(subscriptions).to eq TestDataHash.subscriptions
  end

  it "has package subscriptions total" do
    subscriptions_total = subject.subscriptions_total
    expect(subscriptions_total).to eq test_data_hash["package"]["total"]
  end
end