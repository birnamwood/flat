class PrefecturesController < ApplicationController
  def show
    @prefecture = Prefecture.find(params[:id])
    @municipalities = @prefecture.municipalities
    @region = @prefecture.region
  end
end
