class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :end_user_id
      t.string :zipcode
      t.integer :prefecture_id
      t.integer :municipality_id
      t.string :address
      t.string :post_title
      t.string :post_name
      t.string :overview
      t.string :video
      t.string :access
      t.string :budget
      t.text :body

      t.timestamps
    end
  end
end
