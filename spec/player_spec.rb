describe Player do
  it "returns its name" do
    player = Player.new('Benjamin')
    expect(player.name).to eq 'Benjamin'
  end
end
