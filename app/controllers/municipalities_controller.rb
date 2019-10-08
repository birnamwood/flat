class MunicipalitiesController < ApplicationController
  def show
    @municipality = Municipality.find(params[:id])
    @prefecture = @municipality.prefecture
    @region = @prefecture.region
    @posts = @municipality.posts
  end
end
