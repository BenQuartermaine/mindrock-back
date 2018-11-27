class Api::V1::JournalsController < Api::V1::BaseController
  def create
    @journal = Journal.new(journal_params)
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
    params.require(:journal).permit(:assignment_id, :content, :summary_tag_list, :photo_tag_list)
  end

  def render_error
    render json: {errors: @journal.errors.full_messages },
      status: :unprocessable_entity
  end
end
