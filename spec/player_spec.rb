describe Player do
  it "returns its name" do
    player = Player.new('Benjamin')
    expect(player.name).to eq 'Benjamin'
  end
  describe "#attack" do
    it "Reduces a players hitpoints" do
      player = Player.new('Benjamin')
      player2 = Player.new('Adam')
      expect{player.attack(player2)}.to change{player2.hitpoints}.by(-10)
    end
  end
end
