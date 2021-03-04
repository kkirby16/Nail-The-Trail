class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :password, :city, :bio, :years_hiking, :admin)
  end
end
