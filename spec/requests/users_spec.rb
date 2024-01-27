require 'rails_helper'

RSpec.describe 'Users', type: :request do
  # Show All Users
  describe 'GET/index' do
    before do
      get users_url
    end

    it 'responds with http success' do
      expect(response.status).to eq(200)
    end

    it 'renders the index template' do
      expect(response).to render_template(:index)
    end

    it 'responds with the correct body' do
      expect(response.body).to include('Showing all users in: users#index ( will be the root actually)')
    end
  end

  # Show Selected User Detail
  describe 'GET/show' do
    before do
      @user = User.create(name: 'Porag', posts_counter: 2)
      Post.create(author: @user, title: 'Hello', text: 'post1', comments_counter: 0, likes_counter: 0)
      get user_url(@user)
    end

    it 'responds with http success' do
      expect(response.status).to eq(200)
    end

    it 'renders the show template' do
      expect(response).to render_template(:show)
    end

    it 'responds with the correct body' do
      expect(response.body).to include('Showing selected user details.')
    end
  end
end
