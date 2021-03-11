require "pry"

class HikesController < ApplicationController
  def index
    @hikes = Hike.search(params[:hike][:":location"])
  end
end
