class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @single_user = User.find(params[:id].to_i)
    @user_posts = @single_user.most_recent_post
  end
end
