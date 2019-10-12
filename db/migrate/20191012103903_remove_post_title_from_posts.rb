class RemovePostTitleFromPosts < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :post_title, :string
  end
end
