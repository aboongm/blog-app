class Api::V1::PostsController < ApiController
  def index
    @user = current_user
    @posts = @user.posts.includes(:comments)

    respond_to do |format|
      format.json { render json: @posts }
    end
  end
end