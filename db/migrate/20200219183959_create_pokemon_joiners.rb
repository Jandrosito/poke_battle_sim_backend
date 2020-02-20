class CreatePokemonJoiners < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemon_joiners do |t|
      t.integer :poke_id
      t.integer :poketeam_id

      t.timestamps
    end
  end
end
