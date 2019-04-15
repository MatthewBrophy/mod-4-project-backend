class Api::V1::PokemonsController < ApplicationController

  def index
    @pokemon = Pokemon.all
    render json: @pokemon
  end

  def show
    @pokemon = Pokemon.find(params[:id])
    render json: @pokemon
  end

  private

  def pokemon_params
    params.require(:pokemon).permit(:name, :id, :front_img, :back_img, :weight, :hp)
  end
end
