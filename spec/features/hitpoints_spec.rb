feature "Hitpoints" do
  scenario "viewing hitpoints" do
    visit ('/')
    fill_in :player_1_name, with: 'Adam'
    fill_in :player_2_name, with: 'Ben'
    click_button 'Submit'
    expect(page).to have_content 'Ben: 60HP'
  end
end
