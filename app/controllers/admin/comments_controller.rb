class Admin::CommentsController < ApplicationController
  def destroy
    @comment = Comment.find(params[:id])
    post = @comment.post
    @comments = post.comments.page(params[:page]).reverse_order
    if @comment.destroy
      respond_to do |format|
        format.html { redirect_to post_path(post) }
        format.js
      end
    else
      flash[:error] = comment.errors.full_messages
      redirect_to post_path(post)
    end
  end
end
