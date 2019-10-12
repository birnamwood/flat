class PostTagsController < ApplicationController

  def destroy
    @post_tag = PostTag.find(params[:id])
    if @post_tag.destroy
      flash[:success] = "タグを削除しました。"
    end

    redirect_to edit_post_path(@post_tag.post)
  end
end
