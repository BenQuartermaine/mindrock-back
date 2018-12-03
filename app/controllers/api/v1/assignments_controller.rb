class Api::V1::AssignmentsController < Api::V1::BaseController
  skip_before_action :verify_authenticity_token
  before_action :set_assignment, only: :show

  def show
  end

  def create
    @challenge = Challenge.find(params[:challenge_id])

    @user = User.find(user_params)
    current_day = DateTime.now

    7.times do
      @assignment = Assignment.new(date: current_day.strftime("%Y-%m-%d"))
      @assignment.user = @user
      @assignment.challenge = @challenge
      @assignment.status = false
      @assignment.save
      current_day += 1
    end

    if @assignment.save
      render json: {
        assignment: @assignment
      }
    else
      render_error
    end
  end

  private

  def user_params
    params[:user_id]
  end

  def set_assignment
    @assignment = Assignment.find(params[:id])
  end
end
