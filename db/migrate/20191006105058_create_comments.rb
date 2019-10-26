class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      t.integer :end_user_id
      t.integer :post_id
      t.string :content

      t.timestamps
    end
  end
end
