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

  private

  def comment_params
    params.permit(:text)
  end
end
