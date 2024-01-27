require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  # Show All posts for a selected User
  describe 'GET/index' do
    before do
      @user = User.create(name: 'Porag', posts_counter: 0)
      get user_posts_path(@user)
    end

    it 'responds with http success' do
      expect(response.status).to eq(200)
    end

    it 'renders the index template' do
      expect(response).to render_template(:index)
    end

    it 'responds with the correct body' do
      expect(response.body).to include('Showing all posts of the selected user.')
    end
  end

  # Show Selected Post Detail
  describe 'GET/show' do
    before do
      @user = User.create(name: 'Porag', posts_counter: 2)
      @post = Post.create(author: @user, title: 'Hello', text: 'post1', comments_counter: 0, likes_counter: 0)
      get user_post_url(@user, @post)
    end

    it 'responds with http success' do
      expect(response.status).to eq(200)
    end

    it 'renders the show template' do
      expect(response).to render_template(:show)
    end

    it 'responds with the correct body' do
      expect(response.body).to include('Show details of the selected post.')
    end
  end
end
