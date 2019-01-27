require './lib/player'
require './lib/computer'
require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    $player1 = Player.new(params[:player1_name])
    redirect '/play'
  end

  get '/play' do
    @player1_name = $player1.name
    erb :play
  end

  get '/game' do
    @player1_name = $player1.name
    @option = params[:option]
    erb :game
  end

  run! if app_file == $0
end
