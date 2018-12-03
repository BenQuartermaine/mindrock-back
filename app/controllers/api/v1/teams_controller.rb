class Api::V1::TeamsController < Api::V1::BaseController
  skip_before_action :verify_authenticity_token

  def create
    @team = Team.new(leader: params[:userId], challenge_id: params[:challenge_id])

    if @team.save
      TeamUser.create(team_id: @team.id, user_id: params[:userId])
    else
      render_error
    end
  end

  def update
    TeamUser.create(team_id: params[:id], user_id: params[:userId])
  end

  private

  def render_error
    render json: { error: @user.errors.full_messages },
           status: :unprocessable_entity
  end
end
