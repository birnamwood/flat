class CreateReplies < ActiveRecord::Migration[5.2]
  def change
    create_table :replies do, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      t.string :reply_title
      t.string :reply_body
      t.integer :admin_user_id

      t.timestamps
    end
  end
end
