class UsersController < ApplicationController
    skip_before_action :authorized, only: [:create]
    def index
        users = User.all
        render json: users
    end

    def profile
        render json: { user: UserSerializer.new(@user)}, status: :accepted
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
            @token = encode_token(user_id: @user.id)
            Game.all.each do |game|
                UserGame.create(user_id: @user.id, game_id: game.id, score: 0)
            end
            render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
        else
            render json: { error: 'failed to create user' }, status: :not_acceptable
        end
    end

    def destroy
        @user.destroy
        render json: { success: 'User deleted successfully' }
    end

    def update
        @user.update!(user_params)
        render json: { user: UserSerializer.new(@user)}
    end

    private
    def user_params
        params.require(:user).permit(:username, :password, :email)
    end
end
