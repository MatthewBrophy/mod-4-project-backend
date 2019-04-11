class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.integer :pokemon_id
      t.integer :trainer_id
      t.string  :nickname

      t.timestamps
    end
  end
end
