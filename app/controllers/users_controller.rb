class UsersController < ApplicationController
  def index
    redirect_to users_path(cookies[:user]) if cookies[:user]
  end

  def create
    user = User.new :name => SecureRandom.hex(8)
    user.save

    redirect_to users_path user.name
  end

  def show
    cookies[:user] = params[:id]
    @user = User.find_by_name params[:id]
  end
end
