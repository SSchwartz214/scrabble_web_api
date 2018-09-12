class Api::V1::GamesController < ApplicationController
  def show
    # p1 = User.find(params[:id])
    # p2 = User.find(params[:id])
    # game = Game.find(params[:player_1_id], params[:player_2_id])
    # Play.find(params[:id])
    # Play.find(params[:id])
    game = Game.find_by(id: params[:id])

    render json: game
  end
end
