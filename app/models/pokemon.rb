class Pokemon < ApplicationRecord
    serialize :moves, Array
    serialize :sprites, Hash
    serialize :stats, Array
    has_many :pokemonteams, through: :pokemonjoiner
end
