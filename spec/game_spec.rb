describe Game do
  it "Reduces a players hitpoints" do
    player2 = Player.new('Adam')
    expect{subject.attack(player2)}.to change{player2.hitpoints}.by(-10)
  end
end
