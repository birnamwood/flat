class MunicipalitiesController < ApplicationController
  def show
    @municipality = Municipality.find(params[:id])
    @prefecture = @municipality.prefecture
    @region = @prefecture.region
    @posts = @municipality.posts.page(params[:page]).reverse_order
  end
end
