class UserGamesController < ApplicationController
    def index
        user_games = UserGame.find_by(user_id: @user.id)
        render json: user_games
    end

    def show
        user_game = UserGame.find(params[:id])
        render json: user_game
    end
    
    def update
        user_game = UserGame.find(params[:id])
        user_game.update!(user_game_params)
        render json: user_game
    end

    private
    def user_game_params
        params.require(:userGame).permit(:user_id,:game_id,:score)
    end
end
