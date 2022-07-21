class CommentsController < ApplicationController
    def new
        @comment = Comment.new
        @user = current_user
    end

    def create
        @post = Post.find(params[:post_id] || params[:id])
        @comment = Comment.new(text: params[:comment][:text], post_id: @post.id, author_id: current_user.id)
        @comment.author_id = current_user.id

        respond_to do |format|
            if @comment.save
                format.html { redirect_to user_post_url(current_user, @post), notice: "Comment was successfully created." }
            else
                format.html { render :new, status: :unprocessable_entity }
            end
        end

        def comment_params
            params.require(:comment).permit(:text)
        end
    end
end