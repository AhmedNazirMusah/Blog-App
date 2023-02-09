class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
    @users = User.all
  end

  def show
    @single_user = User.find(params[:id].to_i)
    @user_posts = @single_user.most_recent_post
  end
end
