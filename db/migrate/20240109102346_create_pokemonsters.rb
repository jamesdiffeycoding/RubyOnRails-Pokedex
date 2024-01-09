class CreatePokemonsters < ActiveRecord::Migration[7.1]
  def change
    create_table :pokemonsters do |t|
      t.string :name
      t.integer :pokemon_ID

      t.timestamps
    end
  end
end
