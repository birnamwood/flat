class ClipsController < ApplicationController

  def show
    @end_user = EndUser.find(params[:id])
    @posts = @end_user.clip_posts.page(params[:page]).reverse_order
  end

  def create
    @post = Post.find(params[:post_id])
    clip = current_end_user.clips.new(post_id: @post.id)
    clip.save
    respond_to do |format|
      format.html { redirect_to post_path(@post) }
      format.js
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    clip = current_end_user.clips.find_by(post_id: @post.id)
    clip.destroy
    respond_to do |format|
      format.html { redirect_to post_path(@post) }
      format.js
    end
  end

end
