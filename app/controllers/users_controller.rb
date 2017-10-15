class UsersController < ApplicationController

  before_action :authenticate_user!
  before_action :set_user, only: [:my_timeline]
  before_action :set_new_comment


  def index
    @users = User.all
  end

  def follow
    @user = User.find(params[:user_id])
    current_user.follow(@user)
  end


  def unfollow
    @user = User.find(params[:user_id])
    current_user.stop_following(@user)
  end


  def my_timeline
    @new_post = @user.posts.new
    @posts = @user.posts.all
  end

  def timeline
    @posts = User.find_by(id: params[:user_id]).posts.all
  end

  private

  def set_user
    @user = current_user
  end

  def set_new_comment
    @comment = Comment.new
  end


end
