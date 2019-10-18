class Admin::InquiriesController < ApplicationController
  def index
    inquiry_table = Inquiry.arel_table
    reply_table = Reply.arel_table
    condition = reply_table[:inquiry_id].eq(inquiry_table[:id])

    @inquiries = Inquiry.where(Reply.where(condition).exists.not).all.page(params[:page])
  end

  def show
    @inquiry = Inquiry.find(params[:id])
    @reply = Reply.new
    @replies = @inquiry.replies
  end
end
