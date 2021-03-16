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
    @review = @hike.reviews.build
  end

  def create
    @hike = Hike.find_by(id: params[:review][:hike_id])
    @review = Review.new(review_params)
    if @review.save
      redirect_to hike_reviews_path(@hike), notice: "Thanks for creating a review! It's now listed below!"
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:user_id, :hike_id, :title, :description, :date, :star_rating)
  end

  #create strong params method too.
end
