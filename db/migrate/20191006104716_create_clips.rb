class CreateClips < ActiveRecord::Migration[5.2]
  def change
    create_table :clips, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      t.integer :end_user_id
      t.integer :post_id

      t.timestamps
    end
  end
end
