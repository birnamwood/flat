class AddInquiryIdToReplies < ActiveRecord::Migration[5.2]
  def change
    add_column :replies, :inquiry_id, :integer
  end
end
