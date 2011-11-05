class LinksController < ApplicationController
  def create
    @user = User.find_by_name params[:link][:user_id]
    @user.links << Link.create(:url => params[:link][:url])

    render :text => @user.links
  end
end
