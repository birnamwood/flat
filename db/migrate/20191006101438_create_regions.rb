class CreateRegions < ActiveRecord::Migration[5.2]
  def change
    create_table :regions, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      t.string :region_name
      t.string :region_name_kana
      t.string :region_image_id

      t.timestamps
    end
  end
end
