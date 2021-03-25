require "pry"

class HikesController < ApplicationController
  before_action :require_login

  def index
    if params[:hike][:":location"] != "None"
      @hikes = Hike.search(params[:hike][:":location"])
    else
      @hikes = Hike.all
    end
  end

  def require_login
    return head(:forbidden) unless session.include? :user_id
  end
end
