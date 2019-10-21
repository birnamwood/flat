class EndUsersController < ApplicationController
  def show
    @end_user  = EndUser.find(params[:id])
    @posts = @end_user.posts.page(params[:page]).reverse_order
  end

  def edit
    @end_user  = EndUser.find(params[:id])
    @prefecture = @end_user.prefecture
    @municipality = @prefecture.municipalities
  end

  def update
    @end_user  = EndUser.find(params[:id])
      if @end_user.update(end_users_params)
        flash[:success] = "ユーザー情報を更新しました。"
        redirect_to end_user_path(@end_user)
      else
        flash[:danger] = "ユーザー情報の更新に失敗しました。"
        flash[:error] = @end_user.errors.full_messages
        redirect_to edit_end_user_path(@end_user)
      end
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

  private

  def end_users_params
    params.require(:end_user).permit(:icon_image_id, :name, :nickname, :zipcode, :prefecture_id, :municipality_id, :address)
  end
end
