class User < ApplicationRecord
  has_secure_password
  has_many :reviews
  has_many :hikes, through: :reviews
  validates :name, presence: true
  validates :username, presence: true
  validates :city, presence: true
  validates :password, presence: true
  validates :username, uniqueness: true
  validates :email, presence: true
  validates :email, uniqueness: true
  validates_format_of :email,
                      :with => /\A\S+@.+\.\S+\z/
  #need a scope method here
end
