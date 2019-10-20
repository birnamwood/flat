class Api::MunicipalitiesController < ApplicationController
  protect_from_forgery :except => [:create, :update, :destroy]

  def show
    municipality = Municipality.find(params[:id])
    render json: municipality
  end

  def create
    municipality = Municipality.find(params[:id])
    if municipality.save
      head :no_content
    else
      render json: municipality.errors, status: :unprocessable_entity
    end
  end

  def update
    municipality = Municipality.find(params[:id])
    if municipality.update_attributes(municipality_params)
      head :no_content
    else
      render json: municipality.errors, status: :unprocessable_entity
    end
  end

  def destroy
    municipality = Municipality.find(params[:id])
    if municipality.destroy
      head :no_content
    else
      render json: municipality.errors, status: :unprocessable_entity
    end
  end

  def getprefecture
    municipality = Municipality.find(params[:id])
    prefecture = municipality.prefecture
    render json: prefecture
  end

  private
  def municipality_params
    params.fetch(:municipality, {}).permit(:municipality_name, :municipality_name_kana, :prefecture_id)
  end
end
