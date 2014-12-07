class User < ActiveRecord::Base
  has_many :comments
  has_many :posts

  validates :name, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true


end