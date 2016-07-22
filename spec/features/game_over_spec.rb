feature "Game over" do
  context "when Player 1 reaches 0 HP first" do
    scenario "Player 1 loses" do
      sign_in_and_play
      10.times { (attack_and_confirm) }
      click_button "Attack"
      expect(page).to have_content 'Oggie loses!'
    end
  end
end
