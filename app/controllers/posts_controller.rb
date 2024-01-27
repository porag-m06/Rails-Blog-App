class PostsController < ApplicationController
  # GET  /users/:user_id/posts
  # Fetching the all posts of the user with id = :user_id
  def index
    @user = User.find(params[:user_id])
    @posts = @user.posts
  end

  # GET  /users/:user_id/posts/:id
  # Fetching the details post with post id = :id
  def show
    @post = Post.find(params[:id])
    @user = User.find(params[:user_id])
  end

  def new
    @new_post_model = Post.new
  end

  def create
    @new_post_model = Post.new(allowed_post_params)
    @new_post_model.author_id = current_user.id
    @new_post_model.comments_counter = 0
    @new_post_model.likes_counter = 0

    if @new_post_model.save
      redirect_to user_post_url(current_user, @new_post_model)
    else
      render :new
    end
  end

  private

  def allowed_post_params
    params.require(:post).permit(:title, :text)
  end
end
