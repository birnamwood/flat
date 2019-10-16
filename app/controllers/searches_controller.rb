class SearchesController < ApplicationController
  def index
    @posts = Post.includes([:end_user]).page(params[:page]).reverse_order
    @check = params[:q][:post_name_or_end_user_nickname_or_end_user_name_cont]
  end
end
