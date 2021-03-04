class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(username: params[:user][:username])
    if @user
      if @user.authenticate(params[:user][:password])
        session[:user_id] = @user.id
        redirect_to @user
      else
        redirect_to login_path
      end
    else
      redirect_to login_path
    end
  end
end
