class CreatePokemonTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemon_teams do |t|
      t.string :team

      t.timestamps
    end
  end
end
