class CreatePostTags < ActiveRecord::Migration[5.2]
  def change
    create_table :post_tags, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      t.integer :post_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
