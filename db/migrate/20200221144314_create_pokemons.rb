class CreatePokemons < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.text :moves
      t.string :poke_type
      t.text :sprites
      t.text :stats

      t.timestamps
    end
  end
end
