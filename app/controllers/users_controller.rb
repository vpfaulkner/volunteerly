# For managing Users
class UsersController < ApplicationController
  before_filter :authenticate_admin

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(users_params)
    if @user.save
      redirect_to users_path
    else
      render action: 'new'
    end
  end

  def destroy
    @user = User.find params[:id]
    @user.destroy
    redirect_to users_path
  end

  private

  def users_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
