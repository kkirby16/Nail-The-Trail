class ReviewsController < ApplicationController
  def index
    if params[:hike_id]
      @reviews = Hike.find(params[:hike_id]).reviews
    else
      @reviews = Review.all
    end
  end

  def new
  end

  def create
  end

  #create strong params method too.
end
