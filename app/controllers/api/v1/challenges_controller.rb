class Api::V1::ChallengesController < Api::V1::BaseController

  def index
    @challenges = Challenge.all
  end
end
