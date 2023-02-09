class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.author = current_user
    @comment.post_id = params[:post_id]
    if @comment.save
      redirect_to user_post_path(current_user.id, @comment.post_id), notice: 'New comment added'
    else
      render :new, alert: 'Error adding new comment'
    end
  end

  def destroy
    post = Post.find(params[:post_id])
    comment = Comment.find(params[:id])
    post.comments_counter -= 1
    comment.destroy
    post.save
    redirect_to user_post_path(params[:user_id], params[:post_id])
  end

  private

  def comment_params
    params.permit(:text)
  end
end
