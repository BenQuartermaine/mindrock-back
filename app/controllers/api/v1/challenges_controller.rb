class Api::V1::ChallengesController < Api::V1::BaseController
  def index
    @challenges = Challenge.all
  end

  def show
    @challenge = Challenge.find(params[:id])
  end
end
