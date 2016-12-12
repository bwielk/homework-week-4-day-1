require('sinatra')
require('sinatra/contrib/all') if development?
require('pry')
require_relative('./models/game')

get '/game/:item1/:item2' do
  result = Game.new(params[:item1], params[:item2])
  @result = result.game
  @player1 = params[:item1]
  @player2 = params[:item2]
  erb(:score)
end