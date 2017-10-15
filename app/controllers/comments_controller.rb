class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_post, only:[:create, :destroy, :edit, :update]


  def edit
    @comment = @post.comments.find(params[:id])
  end



  def create
    @comment = @post.comments.new(comment_params)
    @comment.user = current_user
    respond_to do |format|
      if @comment.save
        format.js
      else
        format.js
      end
    end
  end


  def update
    @comment = @post.comments.find(params[:id])
    respond_to do |format|
      if @comment.update(comment_params)
        format.js
      else
        format.js
      end
    end
  end


  def destroy
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    respond_to do |format|
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @user = User.find_by(id: params[:user_id])
      @post = @user.posts.find_by(id: params[:post_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:content)
    end
end
