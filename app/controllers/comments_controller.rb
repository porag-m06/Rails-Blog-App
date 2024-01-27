class CommentsController < ApplicationController
  before_action :set_post, only: %i[new create]

  def set_post
    @post = Post.find(params[:id])
  end

  def new
    @new_comment_model = Comment.new
  end

  def create
    @new_comment_model = Comment.new(allowed_comment_params)
    @new_comment_model.user_id = current_user.id
    @new_comment_model.post_id = @post.id

    if @new_comment_model.save
      redirect_to user_post_path(current_user, @post)
    else
      render :new
    end
  end

  def allowed_comment_params
    params.require(:comment).permit(:text)
  end
end
