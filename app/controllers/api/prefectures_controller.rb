class Api::PrefecturesController < ApplicationController
  before_action :authenticate_admin_user!

  protect_from_forgery :except => [:create, :update, :destroy]

  def show
    prefecture = Prefecture.find(params[:id])
    render json: prefecture
  end

  def create
    prefecture = Prefecture.new(prefecture_params)
    if prefecture.save
      head :no_content
    else
      render json: prefecture.errors, status: :unprocessable_entity
    end
  end

  def update
    prefecture = Prefecture.find(params[:id])
    if prefecture.update_attributes(prefecture_params)
      head :no_content
    else
      render json: prefecture.errors, status: :unprocessable_entity
    end
  end

  def destroy
    prefecture = Prefecture.find(params[:id])
    if prefecture.destroy
      head :no_content
    else
      render json: prefecture.errors, status: :unprocessable_entity
    end
  end

  def getregion
    prefecture = Prefecture.find(params[:id])
    region = prefecture.region
    render json: region
  end

  def getmunicipalities
    prefecture = Prefecture.find(params[:id])
    municipalities = prefecture.municipalities
    render json: municipalities
  end

  private
  def prefecture_params
    params.fetch(:prefecture, {}).permit(:prefecture_name, :prefecture_name_kana, :region_id)
  end

end