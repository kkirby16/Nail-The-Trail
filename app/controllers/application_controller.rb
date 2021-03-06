class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?

  def home
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    current_user != nil
  end

  def log_user_in
    session[:user_id] = @user.id
    redirect_to welcome_path
  end
end
