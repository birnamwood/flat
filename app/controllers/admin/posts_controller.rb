class Admin::PostsController < ApplicationController
  def index
    @posts = Post.where(checked: "false").page(params[:page]).reverse_order
  end

  def show
    @post = Post.find(params[:id])
    @end_user = @post.end_user
    @prefecture = @post.prefecture
    @municipality = @post.municipality
    @region = @prefecture.region
    @post_tags = @post.post_tags
    @post_images = @post.post_images
    @comments = @post.comments.page(params[:page]).reverse_order
  end

  def edit
    @post = Post.find(params[:id])
    @end_user = @post.end_user
    @prefecture = @post.prefecture
    @municipality = @prefecture.municipalities
    # 追加用
    @postnew = Post.new
    @post_tag = @postnew.post_tags.build
    @post_image = @postnew.post_images
  end

  def update
    @post = Post.find(params[:id])
      if @post.update(post_params)
        flash[:success] = "記事を更新しました。"
        redirect_to admin_post_path(@post)
      else
        flash[:success] = "記事の更新に失敗しました。"
        redirect_to edit_admin_post_path(@post)
      end
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.destroy
        flash[:success] = "記事を削除しました。"
        redirect_to admin_admin_users_path
    else
        flash[:warning] = "記事の削除に失敗しました。"
        redirect_to admin_post_path(@post)
    end
  end

  def select_prefectures
    @prefecture = Prefecture.find(params[:pref_id])
    @municipality = @prefecture.municipalities
    render partial: 'select_municipality', locals: { municipality: @municipality }
  end

  def checked
    @post = Post.find(params[:id])
      if @post.checked == false
        if @post.update(checked: true)
          flash[:success] = "記事をチェック済みにしました。"
          redirect_to admin_posts_path
        else
          flash[:warning] = "記事のチェックに失敗しました。"
          redirect_to admin_post_path(@post)
        end
      else
          flash[:warning] = "すでにチェック済みです。"
          redirect_to admin_post_path(@post)
      end
  end

  private
  def post_params
    params.require(:post).permit(:zipcode, :prefecture_id, :municipality_id, :address, :post_title, :post_name, :overview, :video, :access, :budget, :body, :rating,
              post_images_attributes: [:id, :post_id, :post_image_id, :post_image_comment, :_destroy],
              post_tags_attributes: [:id, :post_id, :tag_id, :_destroy])
  end

end
