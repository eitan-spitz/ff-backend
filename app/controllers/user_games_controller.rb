class UserGamesController < ApplicationController
    def index
        user_games = UserGame.find_by(user_id: @user.id)
        render json: user_games
    end

    def show
        user_game = UserGame.find(params[:id])
        render json: user_game
    end
end
