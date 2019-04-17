class GamesController < ApplicationController

    def end_game
        game = Game.create(
            winner: User.find(params[:winner_id])   
            loser: User.find(params[:loser_id])   
        )
    end
end
