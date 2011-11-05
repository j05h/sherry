class LinksController < ApplicationController
  def create
    #@user = User.find_by_name params[:link][:user_id]
    #url = params[:link][:url]
    user = User.find_by_name params[:link][:user_id]
    render :text => user.inspect
  end
end
