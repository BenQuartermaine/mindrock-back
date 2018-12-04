class Api::V1::UsersController < Api::V1::BaseController
  skip_before_action :verify_authenticity_token

  def show
    @user = User.find(params[:id])
    # create assignments, current challenge from frontend
  end


  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      render :show
    else
      render_error
    end
  end

  private

  def user_params
    params.require(:user).permit(:avatarUrl, :nickName, :gender)
  end

  def render_error
    render json: { error: @user.errors.full_messages },
           status: :unprocessable_entity
  end
end
