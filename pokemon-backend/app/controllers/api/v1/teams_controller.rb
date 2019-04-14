class Api::V1::TeamsController < ApplicationController

  def find
    @team = Team.where(trainer_id: team_params)
    render json: @team
  end

  private

  def team_params
    params.permit(:trainer_id)
  end
end
