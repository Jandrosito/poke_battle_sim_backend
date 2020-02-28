class PokemonTeam < ApplicationRecord
    belongs_to :user
    has_many :pokemon_joiners, :dependent => :delete_all
    has_many :pokemons, through: :pokemon_joiners
end