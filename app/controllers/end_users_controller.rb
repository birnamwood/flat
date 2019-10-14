class EndUsersController < ApplicationController
  def show
    @end_user  = EndUser.find(params[:id])
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

  def select_prefectures
    @prefecture = Prefecture.find(params[:pref_id])
    @municipality = @prefecture.municipalities
    render partial: 'select_user_municipality', locals: { municipality: @municipality }
  end
end
