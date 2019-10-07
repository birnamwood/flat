class HomeController < ApplicationController
  def index
    @regions = Region.all
    @tags = Tag.all
  end

  def regions
    # binding.pry
    @region = Region.find(params[:region_id])
    @prefectures = @region.prefectures
    render :index
  end

end
