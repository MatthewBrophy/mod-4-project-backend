class Trainer < ApplicationRecord
  has_many :teams
  has_many :pokemons, through: :teams

  validates :name, presence: true, uniqueness: true, length: {minimum: 3, maximum: 16}
end
