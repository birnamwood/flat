class AddEndUserIdToInquiries < ActiveRecord::Migration[5.2]
  def change
    remove_column :inquiries, :email, :string
    add_column :inquiries, :end_user_id, :integer
  end
end
