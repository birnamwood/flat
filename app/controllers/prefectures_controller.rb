class PrefecturesController < ApplicationController
  def show
    @prefecture = Prefecture.find(params[:id])
    @municipalities = @prefecture.municipalities
    @region = @prefecture.region
    @posts = @prefecture.posts.page(params[:page]).reverse_order
  end
end
