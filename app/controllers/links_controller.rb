class LinksController < ApplicationController
  def create
    @user = User.find_by_name params[:id]
    @user.links << Link.create(:url => params[:l])

    render :text => 'Awesome!<script>setTimeout(window.close, 2000)</script>'
  end

  def show
    @user = User.find_by_name params[:id]

    redirect_to @user.links.first.url
  end
end
