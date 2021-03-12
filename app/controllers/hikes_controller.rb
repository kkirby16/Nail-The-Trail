require "pry"

class HikesController < ApplicationController
  def index
    if params[:hike][:":location"] != "None"
      @hikes = Hike.search(params[:hike][:":location"])
    else
      @hikes = Hike.all
    end
  end
end
