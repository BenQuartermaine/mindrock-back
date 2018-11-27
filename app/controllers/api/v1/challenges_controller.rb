require 'date'

class Api::V1::ChallengesController < Api::V1::BaseController

  def index
    @challenges = Challenge.all
  end

  def create
    @challenge = Challenge.find(params[:id])
    @user = User.find(user_params)
    current_day = DateTime.now
    # 7.times do
      @assignment = Assignment.new(date: current_day)
      @assignment.challenge = @challenge
      @assignment.save
    # end
  end

  private

  def user_params
    params[:user]
  end

  def challenge_params
    params.require(:challenge).permit(:name, :description)
  end
end
