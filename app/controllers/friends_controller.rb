class FriendsController < ApplicationController
  def index
  end

  def new
  end

  def create
    @friend = Friend.create(:user_id => params[:user_id], :other_user_id => params[:other_user_id])
    flash[:notice] = "Friend Added"
    redirect_to posts_url
  end

  def show
    @friend = User.find(params[:id])
  end

end
