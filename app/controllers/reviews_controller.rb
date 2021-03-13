require "pry"

class ReviewsController < ApplicationController
  def index
    if params[:hike_id]
      @reviews = Hike.find(params[:hike_id]).reviews
    else
      @reviews = Review.all
    end
  end

  def new
    @hike = Hike.find(params[:hike_id])
    @review = @hike.reviews.build(review_params)
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to hike_reviews_path
    else
      render :new
    end
  end

  private

  def review_params
    params.permit(:user_id, :hike_id, :title, :description, :date, :star_rating)
  end

  #create strong params method too.
end
