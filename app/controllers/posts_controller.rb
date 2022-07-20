class PostsController < ApplicationController
  def index
    # @user = User.find(params[:user_id])
    @user = current_user
    @posts = @user.posts
  end

  def new
    @post = Post.new
    @user = current_user
  end

  def create
    Post.create(post_params)
    redirect_to { user_posts_path(current_user) }
  end

  def show
    @post = Post.find(params[:id])
  end
end
