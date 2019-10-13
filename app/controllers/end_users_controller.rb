class EndUsersController < ApplicationController
  def show
    @end_user  = EndUser.find(params[:id])
  end

  def following
    @title = "Following"
    @end_user  = EndUser.find(params[:id])
    @followings = @end_user.following
    render 'show_follow'
  end

  def followers
    @title = "Followers"
    @end_user  = EndUser.find(params[:id])
    @followers = @end_user.followers
    render 'show_follow'
  end
end
