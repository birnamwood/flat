class PostsController < ApplicationController
  def new
    @post = Post.new
    @end_user = current_end_user
  end

  def edit
  end

  def show
  end

  private
  def post_params
    params.require(:post).permit(:video)
   #params.require(:モデル名).permit(:カラム名)
  end
end
