class AddPokemonTeamToPokemonJoiner < ActiveRecord::Migration[6.0]
  def change
    add_reference :pokemon_joiners, :pokemon_team, null: false, foreign_key: true
  end
end
