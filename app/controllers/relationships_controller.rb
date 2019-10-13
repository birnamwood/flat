class RelationshipsController < ApplicationController
  def create
    end_user = EndUser.find(params[:followed_id])
    current_end_user.follow(end_user)
    redirect_to end_user
  end

  def destroy
    end_user = Relationship.find(params[:id]).followed
    current_end_user.unfollow(end_user)
    redirect_to end_user
  end
end
