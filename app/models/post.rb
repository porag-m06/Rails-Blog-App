class Post < ApplicationRecord
  belongs_to :author, class_name: 'User', counter_cache: :posts_counter
  has_many :likes
  has_many :comments

  validates :title, presence: true, length: { maximum: 250 }
  validates :comments_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :likes_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  def five_recent_comments
    comments.order(created_at: :desc).limit(5)
  end
end
