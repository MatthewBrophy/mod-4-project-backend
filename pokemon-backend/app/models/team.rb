class Team < ApplicationRecord
  belongs_to :pokemon
  belongs_to :trainer
end
