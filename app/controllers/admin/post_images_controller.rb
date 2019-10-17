class Admin::PostImagesController < ApplicationController
  def destroy
    @post_image = PostImage.find(params[:id])
    if @post_image.destroy
      flash[:success] = "画像を削除しました。"
    else
      flash[:danger] = "画像の削除に失敗しました。"
    end

    redirect_to admin_edit_post_path(@post_image.post)
  end
end