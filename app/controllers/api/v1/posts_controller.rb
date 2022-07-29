class Api::V1::PostsController < ApplicationController
  before_action :authorize_request
  def index
    @posts = Post.where(author_id: params[:author_id])
    if @posts.empty?
      json_response({ msg: 'no post or user found' }, 400)
    else
      render json: @posts
    end
  end

  #  def index
  #   @user = current_user
  #   @posts = @user.posts.includes(:comments)

  #   respond_to do |format|
  #     format.json { render json: @posts }
  #   end
  # end
end
