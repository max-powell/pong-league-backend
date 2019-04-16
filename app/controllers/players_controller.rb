class PlayersController < ApplicationController

    def index
        all_players = Player.all
        render json: all_players
    end

    def create
    end


end
