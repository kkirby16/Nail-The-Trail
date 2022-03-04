
class SessionsController < ApplicationController
  def new
  end

  def create #want to find a user by the omniauth email, or create a user by the omniauth email if it doesn't exist.
    if auth
      @user = User.find_or_create_by(email: auth["info"]["email"])
      @user.name = auth["info"]["name"]
      @user.username = auth["info"]["name"]
      @user.password = SecureRandom.hex(10)
      if @user.save
        log_user_in  #helper method in application controller
      else
        redirect_to login_path
      end
    else
      @user = User.find_by(username: params[:user][:username])
      if @user
        if @user.authenticate(params[:user][:password])
          log_user_in #helper method in application controller
        else
          redirect_to login_path, notice: "*Please enter a valid username and your password."
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
