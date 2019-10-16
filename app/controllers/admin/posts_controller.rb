class Admin::PostsController < ApplicationController
  def index
    @posts = Post.where(checked: "false").page(params[:page]).reverse_order
  end

  def show
  end

  def edit
  end
end
