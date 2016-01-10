require 'spec_helper'
require_relative '../support/test_data_hash'

feature 'Bill Features' do
  let(:test_data_hash){ TestDataHash.data }

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
      expect(page).to have_content grand_total
    end

    it "package subscriptions names and charges" do
      expect(page).to have_content "Variety with Movies HD"
      expect(page).to have_content "50.0"
      expect(page).to have_content "Sky Talk Anytime"
      expect(page).to have_content "5.0"
      expect(page).to have_content "Fibre Unlimited"
      expect(page).to have_content "16.4"
    end
  end
end