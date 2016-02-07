# For managing teams
class TeamsController < ApplicationController
  before_filter :authenticate_admin

  def index
    @teams = Team.all
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(teams_params)
    if @team.save
      redirect_to teams_path
    else
      render action: 'new'
    end
  end

  def edit
    @team = Team.find params[:id]
  end

  def update
    @team = Team.find params[:id]
    if @team.update_attributes teams_params
      redirect_to teams_path
    else
      render action: :edit
    end
  end

  def destroy
    @team = Team.find params[:id]
    @team.destroy
    redirect_to teams_path
  end

  private

  def teams_params
    params.require(:team).permit(:name, :needed_assignments)
  end
end
