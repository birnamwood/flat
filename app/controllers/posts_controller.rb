class PostsController < ApplicationController
  before_action :authenticate_end_user!, only: [:new, :create, :edit, :update, :destroy, :select_prefectures]

  def new
    @post = Post.new
    @post_tag = @post.post_tags.build
    @post_image = @post.post_images.build
    @end_user = current_end_user
    @municipality = Municipality.none
  end

  def edit
    @post = Post.find(params[:id])
    @end_user = @post.end_user
    @prefecture = @post.prefecture
    @municipality = @prefecture.municipalities
    # 追加用
    @postnew = Post.new
    @post_tag = @postnew.post_tags.build
    @post_image = @postnew.post_images.build
  end

  def show
    @post = Post.find(params[:id])
    @end_user = @post.end_user
    @prefecture = @post.prefecture
    @municipality = @post.municipality
    @region = @prefecture.region
    @post_tags = @post.post_tags
    @post_images = @post.post_images
    @comment_new = Comment.new
    @comments = @post.comments.page(params[:page]).reverse_order
  end

  def create
    @post = Post.new(post_params)
    @post.end_user_id = current_end_user.id
    if @post.save
      flash[:success] = "記事を投稿しました。"
      redirect_to post_path(@post)
    else
        flash[:warning] = "記事の投稿に失敗しました。"
        flash[:error] = @post.errors.full_messages
        redirect_to new_post_path
    end
  end

  def update
    @post = Post.find(params[:id])
      if @post.update(post_params)
        if @post.checked == true
          @post.checked = false
        end
        flash[:success] = "記事を更新しました。"
        redirect_to post_path(@post)
      else
        flash[:warning] = "記事の更新に失敗しました。"
        redirect_to edit_post_path(@post)
      end
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.destroy
        flash[:success] = "記事を削除しました。"
        redirect_to end_user_path(current_end_user)
    else
        flash[:warning] = "記事の削除に失敗しました。"
        redirect_to post_path(@post)
    end
  end

  def select_prefectures
    @prefecture = Prefecture.find(params[:pref_id])
    @municipality = @prefecture.municipalities
    render partial: 'select_municipality', locals: { municipality: @municipality }
  end

  private
  def post_params
    params.require(:post).permit(:zipcode, :prefecture_id, :municipality_id, :address, :post_title, :post_name, :overview, :video, :access, :budget, :body, :rating,
              post_images_attributes: [:id, :post_id, :post_image_id, :post_image_comment, :_destroy],
              post_tags_attributes: [:id, :post_id, :tag_id, :_destroy])
  end
end
