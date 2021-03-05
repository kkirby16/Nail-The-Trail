require "pry"

class SessionsController < ApplicationController
  def new
  end

  def create
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

  def destroy
    session.delete("user_id")
    redirect_to root_path
  end
end
