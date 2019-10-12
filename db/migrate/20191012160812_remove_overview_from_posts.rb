class RemoveOverviewFromPosts < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :overview, :string
  end
end
