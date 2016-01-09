require 'spec_helper'

feature 'Bill Features' do
  context 'when on bill show page' do
    before(:each){ visit '/' }
  end

  it 'has a title' do
    expect(page).to have_content 'Your Bill'
  end
end