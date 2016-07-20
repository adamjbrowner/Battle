describe Game do
  it "holds two player instances" do
    game = Game.new("tree")
    expect(game.player_1).to eq "tree"
  end
  it "Reduces a players hitpoints" do
    player = Player.new('Adam')
    expect{subject.attack(player)}.to change{player.hitpoints}.by(-10)
  end
end
