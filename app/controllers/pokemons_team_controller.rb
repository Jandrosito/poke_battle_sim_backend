class PokemonsTeamController < ApplicationController
    def index
        pokemonsteam = PokemonTeam.all 
        render json: pokemonsteam, include: 'pokemon_joiners'
    end

    def show
        pokemonteam = PokemonTeam.find(params[:id])
        render json: pokemonteam, include: 'pokemon_joiners'
    end

    def new 
        pokemonteam = PokemonTeam.new
    end

    def create
        pokemons_team = PokemonTeam.create(team_params)
        render json: pokemons_team
    end

    def destroy
        pokemonteam = PokemonTeam.find(params[:id])
        pokemonteam.destroy
    end

    def edit
        pokemonteam = PokemonTeam.find(params[:id])
    end

    def update
        pokemonteam = PokemonTeam.find(params[:id])
        pokemonteam.update(team_params)
        render json: user
    end

    private

    def team_params
        params.require(:pokemons_team).permit(:user_id)
    end
end
