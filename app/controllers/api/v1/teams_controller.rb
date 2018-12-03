class Api::V1::TeamsController < Api::V1::BaseController

  def index
    @teams = Team.all
  end

  def create

  end

  private

  def render_error
    render json: { error: @user.errors.full_messages },
           status: :unprocessable_entity
  end
end
