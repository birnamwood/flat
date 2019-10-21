class Admin::RepliesController < ApplicationController
  def create
    @reply = Reply.new(replies_params)
    @reply.admin_user_id = current_admin_user.id
    @inquiry = @reply.inquiry
    if @reply.save
      flash[:success] = "返信が完了しました。"
      redirect_to admin_inquiry_path(@inquiry)
    else
      flash[:warning] = "返信に失敗しました。"
      flash[:error] = @post.errors.full_messages
      redirect_to admin_inquiry_path(@inquiry)
    end
  end

  private

  def replies_params
    params.require(:reply).permit(:reply_title, :reply_body, :inquiry_id)
  end
end
