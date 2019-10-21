class Api::RegionsController < ApplicationController
  before_action :authenticate_admin_user!

  protect_from_forgery :except => [:create, :update, :destroy]

  def index
    regions = Region.all
    render json: regions
  end

  def show
    region = Region.find(params[:id])
    render json: region
  end

  def create
    region = Region.new(region_params)
    if region.save
      head :no_content
    else
      render json: region.errors, status: :unprocessable_entity
    end
  end

  def update
    region = Region.find(params[:id])
    if region.update_attributes(region_params)
      head :no_content
    else
      render json: region.errors, status: :unprocessable_entity
    end
  end

  def destroy
    region = Region.find(params[:id])
    if region.destroy
      head :no_content
    else
      render json: region.errors, status: :unprocessable_entity
    end
  end

  def getprefectures
    region = Region.find(params[:id])
    prefectures = region.prefectures
    render json: prefectures
  end

  private
  def region_params
    params.fetch(:region, {}).permit(:region_name, :region_name_kana)
  end
end
