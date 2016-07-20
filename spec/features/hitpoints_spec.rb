feature "Hitpoints" do
  scenario "viewing hitpoints" do
    sign_in_and_play
    expect(page).to have_content 'Ben: 60HP'
  end
end
