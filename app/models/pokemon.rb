class Pokemon < ApplicationRecord
    serialize :moves, Array
    serialize :sprites, Hash
    serialize :stats, Array
    has_many :pokemon_joiners
    has_many :pokemon_teams, through: :pokemon_joiners
end
