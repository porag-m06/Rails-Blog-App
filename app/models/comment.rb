class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  after_save :post_comments_counter_updater

  def post_comments_counter_updater
    post.update(comments_counter: post.comments.count)
    post.comments.count
  end
end
