class TeamSerializer < ActiveModel::Serializer
  attributes :id, :trainer_id, :pokemon_id, :nickname
end
