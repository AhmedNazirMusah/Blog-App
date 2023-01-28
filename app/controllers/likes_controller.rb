class LikesController < ApplicationController
  def new
    @like = Like.new
  end

  def create
    @like = Like.new(post_id: params[:id], author: current_user)
    if @like.save
      redirect_to root_path, notice: 'Liked a post'
    else
      render :new, alert: 'Failed to like a post. Try again'
    end
  end
end
