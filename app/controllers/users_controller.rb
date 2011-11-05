class UsersController < ApplicationController
  def index
    #redirect_to user_path(cookies[:user]) if cookies[:user]
  end

  def create
    name = params[:name] || "#{RandomWord.adjs.next}_#{RandomWord.nouns.next}"
    name = name.downcase.strip.gsub(/\W/,'_')
    user = User.find_or_create_by_name name
    user.save

    redirect_to user_path user.name
  end

  def show
    cookies[:user] = params[:id]
    @user = User.find_by_name params[:id]
  end
end
