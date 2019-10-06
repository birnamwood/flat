class CreateMunicipalities < ActiveRecord::Migration[5.2]
  def change
    create_table :municipalities do |t|
      t.string :municipality_name
      t.string :municipality_name_kana
      t.integer :prefecture_id

      t.timestamps
    end
  end
end
