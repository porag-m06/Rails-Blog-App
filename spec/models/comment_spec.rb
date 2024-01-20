require 'rails_helper'

RSpec.describe Comment, type: :model do
  let(:user) { User.create(name: 'Test User', posts_counter: 0) }
  let(:post) { Post.create(title: 'Test Post', author: user, comments_counter: 0, likes_counter: 0) }

  describe '#post_comments_counter_updater' do
    let!(:comment) { Comment.create(user:, post:, text: 'Test Comment') }

    it 'updates the comments_counter and returns the correct count' do
      expect(comment.post_comments_counter_updater).to eq(1)
      expect(post.reload.comments_counter).to eq(1)
    end
  end
end
