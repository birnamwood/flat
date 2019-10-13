class VisitsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    visit = current_end_user.visits.new(post_id: @post.id)
    visit.save
    respond_to do |format|
      format.html { redirect_to post_path(@post) }
      format.js
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    visit = current_end_user.visits.find_by(post_id: @post.id)
    visit.destroy
    respond_to do |format|
      format.html { redirect_to post_path(@post) }
      format.js
    end
  end

end
