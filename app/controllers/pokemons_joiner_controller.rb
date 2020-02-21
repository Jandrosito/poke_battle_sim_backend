class PokemonsJoinerController < ApplicationController
    def index
        pokemonjoiners = PokemonJoiner.all 
        render json: pokemonjoiners
    end
end
