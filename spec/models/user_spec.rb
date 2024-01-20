require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.create(name: 'Porag', posts_counter: 0) }

  it 'Should validate presence of name' do
    user.name = nil
    expect(user).to_not be_valid
  end

  it 'To be valid posts_counter must always be an integer' do
    user.posts_counter = 'p'
    expect(user).to_not be_valid
  end

  it 'To be valid posts_counter should be greated than or equal to zero' do
    user.posts_counter = -1
    expect(user).to_not be_valid
  end

  it 'returns the three most recent posts' do
    Post.create(author: user, title: 'Hello', text: 'post1', comments_counter: 0, likes_counter: 0)
    Post.create(author: user, title: 'Hello', text: 'post2', comments_counter: 0, likes_counter: 0)
    Post.create(author: user, title: 'Hello', text: 'post3', comments_counter: 0, likes_counter: 0)
    expect(user.three_recent_posts.length).to eq(3)
  end
end
