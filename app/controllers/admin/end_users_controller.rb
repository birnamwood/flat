class Admin::EndUsersController < ApplicationController
  def index
    @end_users = EndUser.all.page(params[:page]).reverse_order
  end

  def show
  end

  def edit
  end
end
