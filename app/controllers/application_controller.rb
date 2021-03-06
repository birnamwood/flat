class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_search

  def after_sign_in_path_for(resource)
    if current_end_user
      root_path
    else
      admin_admin_users_path
    end
  end

  def after_sign_out_path_for(resource)
    root_path
  end

  def set_search
    @search = Post.ransack(params[:q])
    @search_posts = @search.result.page(params[:page]).reverse_order
  end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :name, :nickname, :zipcode, :prefecture_id, :municipality_id, :address, :icon_image_id])
  end
end
