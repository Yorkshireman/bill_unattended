require 'spec_helper'
require_relative '../../lib/bill_web.rb'

feature 'Bill Features' do
  context 'when on bill show page' do
    before(:each){ visit '/' }
  end

  it 'has a title' do
    expect(page).to have_content 'Your Bill'
  end
end