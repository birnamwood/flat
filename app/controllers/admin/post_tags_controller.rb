class Admin::PostTagsController < ApplicationController
  before_action :authenticate_admin_user!

  def destroy
    @post_tag = PostTag.find(params[:id])
    if @post_tag.destroy
      flash[:success] = "タグを削除しました。"
    end

    redirect_to edit_admin_post_path(@post_tag.post)
  end
end
