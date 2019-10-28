class HomeController < ApplicationController
  def index
    @regions = Region.all
    @tags = Tag.all
  end

  def regions
    @region = Region.find(params[:region_id])
    @prefectures = @region.prefectures
    render :index
  end

  def about
  end

  def terms
  end

end
