class CommentsController < ApplicationController
  def create
    post = Post.find(params[:comment][:post_id])
    comment = Comment.new(comment_params)
    comment.end_user_id = current_end_user.id
    comment.post_id = post.id
    @comments = post.comments.page(params[:page]).reverse_order

    if comment.save
      respond_to do |format|
        format.html { redirect_to post_path(post) }
        format.js
      end
    else
      flash[:error] = comment.errors.full_messages
      redirect_to post_path(post)
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    post = @comment.post
    @comments = post.comments.page(params[:page]).reverse_order
    if @comment.destroy
      respond_to do |format|
        format.html { redirect_to admin_post_path(post) }
        format.js
      end
    else
      flash[:error] = comment.errors.full_messages
      redirect_to admin_post_path(post)
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:content, :post_id)
  end
end