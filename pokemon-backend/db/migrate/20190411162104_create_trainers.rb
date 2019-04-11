class CreateTrainers < ActiveRecord::Migration[5.2]
  def change
    create_table :trainers do |t|
      t.string :name
      t.string :hometown
      t.integer :age
      t.string :image
      t.string :enemy

      t.timestamps
    end
  end
end
