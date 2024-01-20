class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :likes
  has_many :comments

  def user_posts_counter_updater
    author.update(posts_counter: author.posts.count)
    author.posts.count
  end

  def five_recent_comments
    comments.order(created_at: :desc).limit(5)
  end
end
