class Like < ApplicationRecord
  belongs_to :user
  belongs_to :post

  after_save :post_likes_counter_updater

  def post_likes_counter_updater
    post.update(likes_counter: post.likes.count)
    post.likes.count
  end
end
