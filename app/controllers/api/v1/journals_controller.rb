class Api::V1::JournalsController < Api::V1::BaseController
  skip_before_action :verify_authenticity_token

  def show
  end

  def create
    @assignment = Assignment.find(params[:assignment_id])
    # update assignment status
    @assignment.status = true
    @assignment.save

    @journal = Journal.new(journal_params)
    @journal.assignment = @assignment

    if @journal.save
      render json: {
        journal: @journal
      }
    else
      render_error
    end
  end

  private
  def journal_params
    params.require(:journal).permit(:content, :summary_tag_list, :photo_tag_list)
  end

  def render_error
    render json: {errors: @journal.errors.full_messages },
      status: :unprocessable_entity
  end
end
