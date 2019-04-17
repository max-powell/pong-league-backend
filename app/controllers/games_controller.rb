class GamesController < ApplicationController


    def create
        game = Game.create(winner_id:params[:winner_id], loser_id: params[:loser_id])
        render json: game
    end

end
