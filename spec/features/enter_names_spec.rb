require 'spec_helper'

feature "enter names" do
  scenario 'submitting names' do
  sign_in_and_play
  expect(page).to have_content 'Adam vs. Ben'
  end
end

feature "Hitpoints" do
  scenario "viewing hitpoints" do
    sign_in_and_play
    expect(page).to have_content 'Ben: 60HP'
  end
end

feature "Attack" do
  scenario "Attacking with confirmation" do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Adam attacked Ben'
  end
end
