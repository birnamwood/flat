class Admin::TagsController < ApplicationController
  def show
    @tag = Tag.find(params[:id])
    @posts = @tag.tag_posts.page(params[:page]).reverse_order
  end
end
