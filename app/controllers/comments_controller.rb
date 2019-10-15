class CommentsController < ApplicationController
  def create
    post = Post.find(params[:comment][:post_id])
    comment = Comment.new(comment_params)
    comment.end_user_id = current_end_user.id
    comment.post_id = post.id

    if comment.save
      flash[:success] = "コメントを送信しました。"
      redirect_to post_path(post)
    else
      flash[:error] = comment.errors.full_messages
      redirect_to post_path(post)
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    post = @comment.post
    if @comment.destroy
        flash[:success] = "コメントを削除しました"
      redirect_to post_path(post)
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:content, :post_id)
  end
end
