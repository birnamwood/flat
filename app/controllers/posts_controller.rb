class PostsController < ApplicationController
  def new
    @post = Post.new
    @end_user = current_end_user
  end

  def edit
  end

  def show
  end
end
