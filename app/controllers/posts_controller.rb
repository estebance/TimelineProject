class PostsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def edit
  end


  def create
    @post = current_user.posts.new(post_params)
    @comment = Comment.new
    respond_to do |format|
      if @post.save
        format.js
      else
        format.js
      end
    end
  end

  def update
    @comment = Comment.new
    respond_to do |format|
      if @post.update(post_params)
        format.js
      else
        format.js
      end
    end
  end


  def destroy
    @post.destroy
    respond_to do |format|
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = User.find(params[:user_id]).posts.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :content)
    end
end
