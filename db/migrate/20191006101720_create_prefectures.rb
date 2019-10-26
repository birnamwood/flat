class CreatePrefectures < ActiveRecord::Migration[5.2]
  def change
    create_table :prefectures, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      t.string :prefecture_name
      t.string :prefecture_name_kana
      t.string :prefecture_image_id
      t.integer :region_id

      t.timestamps
    end
  end
end
