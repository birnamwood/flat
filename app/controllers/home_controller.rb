class HomeController < ApplicationController
  def index
    @regions = Region.all
    @tags = Tag.all
  end
end
