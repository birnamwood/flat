class CommentsController < ApplicationController
  def create
    post = Post.find(params[:comment][:post_id])
    comment = Comment.new(comment_params)
    comment.end_user_id = current_end_user.id
    comment.post_id = post.id

    if comment.save
      flash[:success] = "コメントを送信しました。"
      @comments = post.comments.page(params[:page]).reverse_order
      respond_to do |format|
        format.html { redirect_to post_path(post) }
        format.js
      end
    else
      flash[:error] = comment.errors.full_messages
      respond_to do |format|
        format.html { redirect_to post_path(post) }
        format.js
      end
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    post = @comment.post
    if @comment.destroy
      @comments = post.comments.page(params[:page]).reverse_order
      flash[:success] = "コメントを削除しました"
      respond_to do |format|
        format.html { redirect_to post_path(post) }
        format.js
      end
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:content, :post_id)
  end
end
