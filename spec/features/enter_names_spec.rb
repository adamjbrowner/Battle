require 'spec_helper'

feature "enter names" do
  scenario 'submitting names' do
  visit('/')
  fill_in :player_1_name, with: 'Adam'
  fill_in :player_2_name, with: 'Ben'
  click_button 'Submit'
  expect(page).to have_content 'Adam vs. Ben'
  end
end
