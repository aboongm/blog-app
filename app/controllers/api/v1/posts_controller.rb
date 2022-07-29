class Api::V1::PostsController < ApiController
  before_action :authorize_request
  def index
    @user = current_user
    @posts = @user.posts.includes(:comments)

    respond_to do |format|
      format.json { render json: @posts }
    end
  end
end
