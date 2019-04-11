class PokemonsController < ApplicationController

  def index
    @pokemon = Pokemon.all
    render json: @pokemon
  end

  def show
    @pokemon = Pokemon.find(pokemon_params)
  end

  private

  def pokemon_params
    params.require(:pokemons).permit(:name, :front_img, :back_img, :weight, :hp)
  end
end
