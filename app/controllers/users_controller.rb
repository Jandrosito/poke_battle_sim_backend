class UsersController < ApplicationController
    def index
        users = User.all 
        render json: users, include: 'pokemon_teams'
    end

    def show
        user = User.find(params[:id])
        render json: user, include: 'pokemon_teams'
    end

    def new
        user = User.new
    end

    def create
        user = User.find_or_create_by(username: user_params[:username])
        user.update_attributes(user_params)
        render json: user
    end

    private

    def user_params
        params.require(:user).permit(:username)
    end
end
