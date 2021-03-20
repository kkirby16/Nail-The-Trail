require "pry"

class Review < ApplicationRecord
  after_save :update_hikes_average
  after_destroy :update_hikes_average

  belongs_to :user
  belongs_to :hike
  validates :title, presence: true
  validates :description, presence: true
  validates :date, presence: true
  validates :star_rating, presence: true, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }

  def update_hikes_average
    new_avg = (self.hike.reviews.sum { |review| review.star_rating.to_f } / self.hike.reviews.count.to_f)
    self.hike.update(avg_star_rating: new_avg.to_f)
  end
end
