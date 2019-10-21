class Admin::TagsController < ApplicationController
  before_action :authenticate_admin_user!

  def show
    @tag = Tag.find(params[:id])
    @posts = @tag.tag_posts.page(params[:page]).reverse_order
  end
end
