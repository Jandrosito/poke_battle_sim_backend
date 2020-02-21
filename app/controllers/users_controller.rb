class UsersController < ApplicationController
    def index
        users = User.all 
        render json: users
    end

    def show
        user = User.find_by(params[:id])
        render json: user
    end

    def new
        user = User.new
    end

    def create
        user = User.find_or_create_by(user_params[:user_params])
        user.update_attributes(user_params)
        render json: user
    end

    private

    def user_params
        params.require(:user).permit(:name)
end
