class PokemonsTeamController < ApplicationController
    def index
        pokemonteams = PokemonTeam.all 
        render json: pokemonteams
    end

    def show
        pokemonteam = PokemonTeam.find(params[:id])
        render json: pokemonteam
    end

    def new 
        pokemonteam = PokemonTeam.new
    end

    def create 
        pokemonteam = User.create(username: user_params[:username])
        render json: user
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
    end

    def edit
        user = User.find(params[:id])
    end

    def update
        user = User.find(params[:id])
        user.update(user_params)
        render json: user
    end
end
