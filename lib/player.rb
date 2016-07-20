require 'game'

class Player

  attr_reader :hitpoints

  def initialize(player_name)
    @player = player_name
    @hitpoints = 60
  end

  def name
    @player
  end

  def recieve_damage
    @hitpoints -= 10
  end

end
