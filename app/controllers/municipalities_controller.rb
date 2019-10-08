class MunicipalitiesController < ApplicationController
  def show
    @municipality = Municipality.find(params[:id])
    @prefecture = @municipality.prefecture
    @region = @prefecture.region
  end
end
