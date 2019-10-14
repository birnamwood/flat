class EndUsersController < ApplicationController
  def show
    @end_user  = EndUser.find(params[:id])
  end

  def following
    @title = "フォロー"
    @end_user  = EndUser.find(params[:id])
    @users = @end_user.following
    render 'show_follow'
  end

  def followers
    @title = "フォロワー"
    @end_user  = EndUser.find(params[:id])
    @users = @end_user.followers
    render 'show_follow'
  end
end
