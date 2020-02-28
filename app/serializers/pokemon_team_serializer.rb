class PokemonTeamSerializer < ActiveModel::Serializer
  attributes :id, :user_id
  has_many :pokemon_joiners
  has_many :pokemons, through: :pokemon_joiners
end
