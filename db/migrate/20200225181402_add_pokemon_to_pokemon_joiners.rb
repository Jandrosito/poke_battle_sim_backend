class AddPokemonToPokemonJoiners < ActiveRecord::Migration[6.0]
  def change
    add_reference :pokemon_joiners, :pokemon, null: false, foreign_key: true
  end
end
