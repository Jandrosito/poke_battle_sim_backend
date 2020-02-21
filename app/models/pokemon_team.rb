class PokemonTeam < ApplicationRecord
    serialize :team, Array
    belongs_to :user
    has_many :pokemons, through: :pokemonjoiner
end