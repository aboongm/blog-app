class Api::V1::CommentsController < ApiController
  def index
    @user = current_user
    @comments = @user.comments

    respond_to do |format|
      format.json { render json: @comments }
    end
  end
end