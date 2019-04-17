class Trainer < ApplicationRecord
  has_many :teams
  has_many :pokemons, through: :teams

  validates :name, presence: true, uniqueness: true, length: {minimum: 3, maximum: 16}
  validates :image, presence: true
  validates :rival, presence: true
  validates :hometown, presence: true
  validates :age, presence: true
end
