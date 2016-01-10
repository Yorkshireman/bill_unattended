require 'spec_helper'
require_relative '../support/test_data_hash'
require_relative '../support/two_decimals'

feature 'Bill Features' do
  let(:test_data_hash){ TestDataHash.data }
  include TwoDecimals

  context 'when on bill page' do
    before :each do
      allow(GetBillData).to receive(:call).and_return(test_data_hash)
      visit '/'
    end
  
    it 'there is a Bill title' do
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

    it "individual call details and charges are visible" do
      call_details = test_data_hash["callCharges"]["calls"]
      number =       call_details[0]["called"]
      duration =     call_details[0]["duration"]
      cost =         call_details[0]["cost"]
      
      expect(page).to have_content "Called:"
      expect(page).to have_content number
      
      expect(page).to have_content "Duration:"
      expect(page).to have_content duration

      expect(page).to have_content "Cost:"
      expect(page).to have_content cost
    end

    it "call charges total is visible" do
      call_charges_total = test_data_hash["callCharges"]["total"]
      expect(page).to have_content call_charges_total
    end

    it "Sky Store Rentals charges are visible" do
      expect(page).to have_content "Sky Store"
      expect(page).to have_content "Rentals:"
      expect(page).to have_content "50 Shades of Grey"
      expect(page).to have_content "4.99"
    end

    it "Sky Store Buy & Keep titles and charges are visible" do
      expect(page).to have_content "Buy & Keep:"
      expect(page).to have_content "That's what she said"
      expect(page).to have_content "9.99"
      expect(page).to have_content "Broke back mountain"
    end

    it "Sky Store total charge is visible" do
      sky_store_total_charge = test_data_hash["skyStore"]["total"]
      expect(page).to have_content sky_store_total_charge
    end
  end
end