require 'spec_helper'

feature 'Bill Features' do
  context 'when on bill show page' do
    before(:each){ visit '/' }
  
    it 'has a title' do
      expect(current_path).to eq '/'
      expect(page).to have_content 'Your Bill'
    end
  end
end