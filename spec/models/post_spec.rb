require 'rails_helper'

RSpec.describe Post, type: :model do
  let(:user) { User.create(name: 'Test User', posts_counter: 0) }
  let(:post) { Post.create(author: user, title: 'Hello', text: 'post1', comments_counter: 3, likes_counter: 7) }

  it 'Post must have a title present' do
    post.title = nil
    expect(post).to_not be_valid
  end

  it 'Post title must not be more than 250 character long' do
    post.title = 't' * 251
    expect(post).to_not be_valid
  end

  it 'Post comments_counter mustbe only integer' do
    post.comments_counter = true
    expect(post).to_not be_valid
  end

  it 'Post comments_counter mustbe greater than or equla to 0' do
    post.comments_counter = -1
    expect(post).to_not be_valid
  end

  it 'Post likes_counter mustbe only integer' do
    post.likes_counter = true
    expect(post).to_not be_valid
  end

  it 'Post likes_counter mustbe greater than or equla to 0' do
    post.likes_counter = -1
    expect(post).to_not be_valid
  end

  describe '#user_posts_counter_updater' do
    it 'updates the posts_counter and returns the correct count' do
      expect(post.user_posts_counter_updater).to eq(1)
    end
  end

  describe '#five_recent_comments' do
    let!(:recent_comments) do
      5.times.map do
        Comment.create(post:, user:, text: 'Hi Tom!')
      end
    end
    it 'returns the five most recent comments' do
      expect(post.five_recent_comments.length).to eq(5)
    end
  end
end
