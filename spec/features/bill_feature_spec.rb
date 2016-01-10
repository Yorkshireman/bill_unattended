require 'spec_helper'
require_relative '../support/test_data_hash'

feature 'Bill Features' do
  let(:test_data_hash){ TestDataHash.data }

  context 'when on bill show page' do
    before :each do
      allow(GetBillData).to receive(:call).and_return(test_data_hash)
      visit '/'
    end
  
    it 'has a title' do
      expect(current_path).to eq '/'
      expect(page).to have_content 'Your Bill'
    end

    it "bill's generated on, due on, from and to dates are displayed" do
      generated_on_date = test_data_hash["statement"]["generated"]
      expect(page).to have_content generated_on_date
      
      due_on_date = test_data_hash["statement"]["due"]
      expect(page).to have_content due_on_date
    end
  end
end