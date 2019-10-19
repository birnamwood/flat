class Api::TagsController < ApplicationController
  protect_from_forgery :except => [:create]

  def index
    tags = Tag.all
    render json: tags
  end

  def create
    tag = Tag.new(tag_params)
    if tag.save
      head :no_content
    else
      render json: tag.errors, status: :unprocessable_entity
    end
  end

  private
  def tag_params
    params.fetch(:tag, {}).permit(:tag_name, :tag_content)
  end
end
