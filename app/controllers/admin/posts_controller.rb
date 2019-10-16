class Admin::PostsController < ApplicationController
  def index
    @posts = Post.where(checked: "false").page(params[:page]).reverse_order
  end

  def show
    @post = Post.find(params[:id])
    @end_user = @post.end_user
    @prefecture = @post.prefecture
    @municipality = @post.municipality
    @region = @prefecture.region
    @post_tags = @post.post_tags
    @post_images = @post.post_images
    @comments = @post.comments.page(params[:page]).reverse_order
  end

  def edit
  end
end
