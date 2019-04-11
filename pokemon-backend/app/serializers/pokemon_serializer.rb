class PokemonSerializer < ActiveModel::Serializer
  attributes :id, :name, :front_img, :back_img, :weight, :hp 
end
