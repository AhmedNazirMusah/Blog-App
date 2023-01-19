class Post < ApplicationRecord
  has_many :comments, foreign_key: :post_id
  has_many :likes, foreign_key: :post_id
  belongs_to :author, class_name: 'User'
  before_save :posts_counter

  def posts_counter
    author.update(posts_counter: author.posts.all.length)
  end

  def recent_comments
    comments.order(created_at: :desc).limit(5)
  end
end
