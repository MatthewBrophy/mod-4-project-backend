class TeamsController < ApplicationController

  def find
    @team = Team.where(trainer_id: team_params)
  end

  private

  def team_params
    params.require(:teams).permit(:pokemon_id, :trainer_id)
  end
end
