class InquiriesController < ApplicationController
  def new
    @inquiry = Inquiry.new
  end

  def create
    @inquiry = Inquiry.new(inquiries_params)
    @inquiry.end_user_id = current_end_user.id

    if @inquiry.save
      flash[:success] = "お問い合わせを受け付けました。"
      redirect_to root_path
    else
      flash[:danger] = "お問い合わせに失敗しました。"
      flash[:error] = @inquiry.errors.full_messages
      redirect_to new_inquiry_path
    end
  end

  private

  def inquiries_params
    params.require(:inquiry).permit(:inquiry_title, :inquiry_body)
  end
end
