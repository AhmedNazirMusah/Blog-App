class PostsController < ApplicationController
  def index
    @single_user = User.find(params[:user_id].to_i)
    @user_posts = Post.includes(comments: [:author]).where(author: @single_user)
  end

  def show
    @single_post = Post.find(params[:id].to_i)
    @post_comments = Comment.where(post: @single_post)
    @user = User.find(params[:user_id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.author = current_user
    if @post.save
      redirect_to user_path(current_user.id), notice: 'Post added'
    else

      render :new, alert: 'An Error occured. Try again'
    end
  end

  def destroy
    post = Post.find(params[:id])
    user = User.find(post.author_id)
    user.post_counter -= 1
    post.destroy
    user.save
    redirect_to user_path(current_user.id)
  end

  private

  def post_params
    params.require(:post).permit(:author, :title, :text, :likes_counter, :comments_counter)
  end
end
