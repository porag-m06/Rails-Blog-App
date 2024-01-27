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
  end
end
