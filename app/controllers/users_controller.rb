class UsersController < ApplicationController

  before_action :authenticate_user!
  before_action :set_user, only: [:my_timeline]
  before_action :set_new_comment

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
