feature 'Attacking' do
  scenario 'attack Player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Joe attacked Oggie'
  end

  scenario 'reduce points after attack' do
    sign_in_and_play
    click_button 'Attack'
    # click_link 'OK'
    expect(page).to have_content 'Oggie: 50HP'
  end
end