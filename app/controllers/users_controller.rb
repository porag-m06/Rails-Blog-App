class UsersController < ApplicationController
  # HTTP METHOD: GET URL pattern: /users
  # Shows or fetches all users with image & User name + Number of posts : view 1
  def index
    @users = User.all
  end

  # HTTP METHOD: GET URL pattern: /users/:id
  # Shows or fetchers the user where :id is the ID of a user.
  def show
    @user = User.find(params[:id])
  end
end
