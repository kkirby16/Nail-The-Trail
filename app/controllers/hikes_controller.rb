require "pry"

class HikesController < ApplicationController
  before_action :require_login

  def index
    if params[:hike] && params[:hike][:":location"] != "None"
      @hikes = Hike.search(params[:hike][:":location"])
    elsif params[:q]
      @hikes = Hike.search_by_name(params[:q])
    else
      @hikes = Hike.all
    end
  end

  def require_login
    return head(:forbidden) unless session.include? :user_id
  end
end
