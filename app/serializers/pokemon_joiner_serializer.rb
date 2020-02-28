class PokemonJoinerSerializer < ActiveModel::Serializer
  attributes :id, :pokemon_id, :pokemon_team_id
  
  belongs_to :pokemon
  belongs_to :pokemon_team 
end
