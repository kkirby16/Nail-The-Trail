class User < ApplicationRecord
  has_secure_password #Adds methods to set and authenticate against a BCrypt password.
  has_many :reviews
  has_many :hikes, through: :reviews
  validates :name, :username, :city, :email, presence: true
  validates :username, :email, uniqueness: true
  validates_format_of :email,
                      :with => /\A\S+@.+\.\S+\z/

  def self.most_active_user
    self.all.joins(:reviews).group("users.id").where("reviews.created_at >= ?", 10.years.ago.utc).order("count(reviews.id) desc").limit(1).first
  end
end
