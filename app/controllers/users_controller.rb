class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :password, :city, :bio, :years_hiking, :admin)
  end
end
