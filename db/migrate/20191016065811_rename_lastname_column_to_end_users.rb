class RenameLastnameColumnToEndUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :end_users, :lastname, :name
    remove_column :end_users, :firstname, :string
  end
end
