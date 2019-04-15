require 'faker'
require 'json'

require 'rest-client'

10.times do (Trainer.create!(name: Faker::FunnyName.unique.name, hometown: Faker::Games::Pokemon.location, age: (16 + Random.rand(70)), image: "https://randomuser.me/api/portraits/med/men/#{1 + Random.rand(60)}.jpg", enemy: "Kevin")
  puts "Seeded Trainer!"
  )
end



def seed_pokemon
  i=1
  while i <= 151 do
  res = res = RestClient.get("https://pokeapi.co/api/v2/pokemon/#{i}")
  r = JSON.parse(res)
  newPokemon = Pokemon.create!(name: r['name'], front_img: r['sprites']['front_default'], back_img: r['sprites']['back_default'], weight: r['weight'], hp: r['stats'][5]['base_stat'])
  puts newPokemon
  i += 1
  end
end

def seed_teams
  50.times do Team.create!(trainer_id: (1 + Random.rand(9)), pokemon_id: (1 + Random.rand(9)), nickname: Faker::GreekPhilosophers.name )
  puts "seeded Team!"
  end
end
seed_pokemon
seed_teams
