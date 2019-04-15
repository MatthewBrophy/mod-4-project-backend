class Api::V1::TeamsController < ApplicationController

  def index
    @teams = Team.all()
    render json: @teams
  end

  def create
    @team = Team.create(team_params)
    render json: @team
  end

  def find
    @team = Team.where(trainer_id: team_params)
    render json: @team
  end

  private

  def team_params
    params.permit(:trainer_id, :pokemon_id)
  end
end
