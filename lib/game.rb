require_relative 'player.rb'

class Game

  attr_reader :current_turn, :opponent

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_turn = player_1
    @opponent = player_2
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack(player)
    player.receive_damage
  end

  def switch_turns
    @opponent = @current_turn
    @current_turn = opponent_of(current_turn)
  end

  private

  def opponent_of(the_player)
    @players.select { |player| player != the_player }.first
  end

end
