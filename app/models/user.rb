class User < ApplicationRecord
  has_secure_password
  has_many :reviews
  has_many :hikes, through: :reviews
  validates :name, presence: true
  validates :username, presence: true
  validates :city, presence: true
  validates :password, presence: true
end
