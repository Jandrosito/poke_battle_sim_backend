class PokemonJoiner < ApplicationRecord
    belongs_to :pokemon 
    belongs_to :pokemon_team
end
