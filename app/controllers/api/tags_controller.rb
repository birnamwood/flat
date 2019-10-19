class Api::TagsController < ApplicationController
  protect_from_forgery :except => [:create, :update]

  def index
    tags = Tag.all
    render json: tags
  end

  def show
    tag = Tag.find(params[:id])
    render json: tag
  end

  def create
    tag = Tag.new(tag_params)
    if tag.save
      head :no_content
    else
      render json: tag.errors, status: :unprocessable_entity
    end
  end

  def update
    tag = Tag.find(params[:id])
    if tag.update_attributes(tag_params)
      render 'index', formats:'json'
    else
      render json: tag.errors, status: :unprocessable_entity
    end
  end

  private
  def tag_params
    params.fetch(:tag, {}).permit(:tag_name, :tag_content)
  end
end
