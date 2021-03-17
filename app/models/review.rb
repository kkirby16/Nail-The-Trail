class Review < ApplicationRecord
  belongs_to :user
  belongs_to :hike
  validates :title, presence: true
  validates :description, presence: true
  validates :date, presence: true
  validates :star_rating, presence: true, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
end
