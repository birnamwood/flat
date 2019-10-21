class RemoveBudgetFromPosts < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :budget, :string
  end
end
