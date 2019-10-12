class RemoveAccsessFromPosts < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :access, :string
  end
end
