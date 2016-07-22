require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb(:play)
  end

  get '/attack' do
    @game = Game.instance
    @game.attack(@game.opponent)
    if @game.game_over?
      redirect '/game_over'
    else
      erb(:attack)
    end
  end

  post '/switch_turns' do
    @game = Game.instance
    @game.switch_turns
    redirect '/play'
  end

  get '/game_over' do
    @game = Game.instance
    erb(:game_over)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
