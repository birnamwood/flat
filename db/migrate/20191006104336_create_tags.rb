class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      t.string :tag_name
      t.string :tag_content

      t.timestamps
    end
  end
end
