require 'game'

class Player

  attr_reader :hitpoints

  def initialize player_name, game=Game.new
    @player = player_name
    @hitpoints = 60
    @game = game
  end

  def name
    @player
  end

  def recieve_damage
    @hitpoints -= 10
  end

end
