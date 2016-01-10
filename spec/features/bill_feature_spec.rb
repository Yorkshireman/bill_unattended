require 'spec_helper'
require_relative '../support/test_data_hash'
require_relative '../support/two_decimals'

feature 'Bill Features' do
  let(:test_data_hash){ TestDataHash.data }
  include TwoDecimals

  context 'when on bill show page' do
    before :each do
      allow(GetBillData).to receive(:call).and_return(test_data_hash)
      visit '/'
    end
  
    it 'has a Bill title' do
      expect(current_path).to eq '/'
      expect(page).to have_content 'Your Bill'
    end

    it "'generated on' and 'due on' dates are visible" do
      generated_on_date = test_data_hash["statement"]["generated"]
      expect(page).to have_content generated_on_date
      
      due_on_date = test_data_hash["statement"]["due"]
      expect(page).to have_content due_on_date
    end

    it "'from' and 'to' dates are visible" do
      from_date = test_data_hash["statement"]["period"]["from"]
      expect(page).to have_content from_date

      to_date = test_data_hash["statement"]["period"]["to"]
      expect(page).to have_content to_date
    end

    it "grand total is visible" do
      grand_total = test_data_hash["total"]
      expect(page).to have_content(two_decimals(grand_total))
    end

    it "package subscriptions names and charges are visible" do
      expect(page).to have_content "Variety with Movies HD"
      expect(page).to have_content "50.00"
      expect(page).to have_content "Sky Talk Anytime"
      expect(page).to have_content "5.00"
      expect(page).to have_content "Fibre Unlimited"
      expect(page).to have_content "16.40"
    end

    it "package subscriptions total is visible" do
      expect(page).to have_content "71.40"
    end
  end
end