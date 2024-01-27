class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :likes
  has_many :comments

  validates :title, presence: true, length: { maximum: 250 }
  validates :comments_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :likes_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  after_save :user_posts_counter_updater

  def user_posts_counter_updater
    author.update(posts_counter: author.posts.count)
    author.posts.count
  end

  def five_recent_comments
    comments.order(created_at: :desc).limit(5)
  end
end
