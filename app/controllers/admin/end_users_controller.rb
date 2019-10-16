class Admin::EndUsersController < ApplicationController
  def index
    @end_users = EndUser.all.page(params[:page]).reverse_order
  end

  def show
    @end_user  = EndUser.find(params[:id])
    @posts = @end_user.posts.page(params[:page]).reverse_order
  end

  def edit
  end

  def following
    @title = "さんのフォローユーザー"
    @end_user  = EndUser.find(params[:id])
    @users = @end_user.following.page(params[:page]).reverse_order
    render 'show_follow'
  end

  def followers
    @title = "さんのフォロワー"
    @end_user  = EndUser.find(params[:id])
    @users = @end_user.followers.page(params[:page]).reverse_order
    render 'show_follow'
  end

end
