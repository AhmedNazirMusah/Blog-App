class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :comments, foreign_key: :author_id
  has_many :posts, foreign_key: :author_id
  has_many :likes, foreign_key: :author_id
  validates :name, presence: true
  validates :post_counter, comparison: { greater_than_or_equal_to: 0 }, numericality: { only_integer: true }

  ROLES = %i[admin default].freeze

  def is?(requested_role)
    role == requested_role
  end

  def most_recent_post
    posts.order(created_at: :desc).limit(3)
  end
end
