class UsersController < ApplicationController
  def index

  end

  def create
    user = User.new :name => SecureRandom.hex(8)
    user.save

    redirect_to users_path user.name
  end

  def show
    @user = User.find_by_name params[:id]
  end
end