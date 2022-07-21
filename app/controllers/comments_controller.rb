class CommentsController < ApplicationController
    def new
        @comment = Comment.new
        @user = current_user
    end

    def create
        @comment = Comment.new(comment_params)
        @comment.author_id = current_user.id
        @comment.post_id = params[:post_id]
        @post = Post.find(params[:post_id])

        respond_to do |format|
            if @comment.save
                format.html { redirect_to user_post_url(current_user, @post), notice: "Comment was successfully created." }
            else
                format.html { render :new, status: :unprocessable_entity }
            end
        end
    end
end