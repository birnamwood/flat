class CreateEndUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :end_users do |t|
      t.string :email
      t.string :password_digest
      t.string :lastname
      t.string :firstname
      t.string :nickname
      t.string :icon_image_id
      t.string :zipcode
      t.integer :prefecture_id
      t.integer :municipality_id
      t.string :address
      t.boolean :deleted
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
