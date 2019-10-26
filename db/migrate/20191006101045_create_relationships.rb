class CreateRelationships < ActiveRecord::Migration[5.2]
  def change
    create_table :relationships, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      t.integer :followed_id
      t.integer :follower_id

      t.timestamps
    end
  end
end
