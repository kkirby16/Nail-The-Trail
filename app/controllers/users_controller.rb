class UsersController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:new, :create]

  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to welcome_path
    else
      render :new
    end
  end

  def welcome
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def most_active_user
  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :email, :password, :city, :bio, :years_hiking, :admin)
  end

  def require_login
    return head(:forbidden) unless session.include? :user_id
  end
end
