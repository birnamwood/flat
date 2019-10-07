class PostsController < ApplicationController
  def new
    @post = Post.new
    @end_user = current_end_user
  end

  def edit
  end

  def show
    @post = Post.find(params[:id])
    @user = @post.end_user
    @comment_new = Comment.new
    @comments = @post.comments
  end

  def create
    post = Post.new(post_params)
    post.end_user_id = current_end_user.id

    post.save
    flash[:success] = "記事を投稿しました。"
    redirect_to root_path
  end

  private
  def post_params
    params.require(:post).permit(:zipcode, :prefecture_id, :municipality_id, :address, :post_title, :post_name, :overview, :video, :acccess, :budget, :body)
  end
end
