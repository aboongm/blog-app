class Api::V1::CommentsController < ApiController
  before_action :authorize_request
  protect_from_forgery with: :null_session
  
  def index
    @user = current_user
    @comments = @user.comments

    respond_to do |format|
      format.json { render json: @comments }
    end
  end

  def create
    @comment = Comment.create(
      text: comment_params[:text],
      author_id: params[:author_id],
      post_id: params[:post_id]
    )

    json_response(@comment, :created)
  end

  private

  def comment_params
    params.require(:comment).permit(:text)
  end
end
