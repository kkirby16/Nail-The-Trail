require "pry"

class SessionsController < ApplicationController
  def new
  end

  def create #want to find a user by the omniauth email, or create a user by the omniauth email if it doesn't exist.
    if auth
      @user = User.find_or_create_by(email: auth["info"]["email"]) do |u|
        u.name = auth["info"]["name"]
        u.password = SecureRandom.hex(10)
      end
      if @user.persisted?
        session[:user_id] = @user.id
        redirect_to welcome_path  #if we're repeating code for the auth part and the non-auth part of this method, try to look at a way to dry this code up. lines 14, 15 and 16 could be pretty repeated later on.
      else
        redirect_to login_path
      end
    else
      @user = User.find_by(username: params[:user][:username])
      if @user
        if @user.authenticate(params[:user][:password])
          session[:user_id] = @user.id
          redirect_to welcome_path
        else
          redirect_to login_path, notice: "*Please enter a valid password."
        end
      else
        redirect_to login_path, notice: "*Please enter a valid username and your password."
      end
    end
  end

  def destroy
    session.delete("user_id")
    redirect_to root_path
  end

  private

  def auth #this method returns the response hash that we get from facebook.
    request.env["omniauth.auth"]
  end
end
