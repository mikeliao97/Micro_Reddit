class User < ActiveRecord::Base
  validates :username, presence: true, length: {maximum:50, minimum: 5}, uniqueness: true
  has_many :posts  
  has_many :comments, through: :posts
  validates :email, presence: true, length: {maximum: 50, minimum: 5}, uniqueness: true
end
