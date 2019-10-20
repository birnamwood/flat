class Api::PrefecturesController < ApplicationController
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
      render 'index', formats:'json'
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

  private
  def prefecture_params
    params.fetch(:prefecture, {}).permit(:prefecture_name, :prefecture_name_kana, :region_id)
  end
end

end
