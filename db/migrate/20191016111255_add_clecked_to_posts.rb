class AddCleckedToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :checked, :boolean, default: false, null: false
  end
end
