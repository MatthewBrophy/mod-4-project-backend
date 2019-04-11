
ActiveRecord::Schema.define(version: 2019_04_11_162153) do

  enable_extension "plpgsql"

  create_table "pokemons", force: :cascade do |t|
    t.string "name"
    t.string "front_img"
    t.string "back_img"
    t.integer "weight"
    t.integer "hp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.integer "pokemon_id"
    t.integer "trainer_id"
    t.string "nickname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trainers", force: :cascade do |t|
    t.string "name"
    t.string "hometown"
    t.integer "age"
    t.string "image"
    t.string "enemy"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
