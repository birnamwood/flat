class CreatePostImages < ActiveRecord::Migration[5.2]
  def change
    create_table :post_images, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      t.integer :post_id
      t.string :post_image_id
      t.string :post_image_comment

      t.timestamps
    end
  end
end
