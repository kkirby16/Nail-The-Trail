class Hike < ApplicationRecord
  has_many :reviews
  has_many :users, through: :reviews

  def self.search(search)
    if search
      hikes = Hike.all
      hikes = hikes.where(location: search)
      return hikes
    else
      Hike.all
    end
  end
end
