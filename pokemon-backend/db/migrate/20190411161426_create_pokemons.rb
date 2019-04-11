class CreatePokemons < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :type
      t.string :front_img
      t.string :back_img
      t.integer :weight
      t.integer :hp

      t.timestamps
    end
  end
end
