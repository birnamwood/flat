class RelationshipsController < ApplicationController
  def create
    @end_user = EndUser.find(params[:followed_id])
    current_end_user.follow(@end_user)
    respond_to do |format|
      format.html { redirect_to end_user_path(@end_user) }
      format.js
    end
  end

  def destroy
    @end_user = Relationship.find(params[:id]).followed
    current_end_user.unfollow(@end_user)
    respond_to do |format|
      format.html { redirect_to end_user_path(@end_user) }
      format.js
    end
  end
end
