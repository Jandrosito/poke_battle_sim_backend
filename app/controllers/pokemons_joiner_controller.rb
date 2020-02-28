class PokemonsJoinerController < ApplicationController
    def index
        pokemonsjoiner = PokemonJoiner.all 
        render json: pokemonsjoiner, include: 'pokemon'
    end

    def show
        pokemonjoiner = PokemonJoiner.find(params[:id])
        render json: pokemonjoiner, include: 'pokemon'
    end

    def new
        pokemonjoiner = PokemonJoiner.new
    end

    def create 
        pokemonjoiner = PokemonJoiner.create(joiner_params)
        render json: pokemonjoiner
    end

    def destroy

    end

    private

    def joiner_params
        params.require(:pokemons_joiner).permit(:pokemon_id, :pokemon_team_id)
    end
end
