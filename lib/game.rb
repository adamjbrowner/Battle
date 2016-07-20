require 'player'

class Game

  attr_reader :player_1, :player_2

  def initialize(player_1 = Player.new("name"), player_2 = Player.new("name"))
    @player_1 = player_1
    @player_2 = player_2
  end

  def attack(player)
    player.recieve_damage
  end

end
