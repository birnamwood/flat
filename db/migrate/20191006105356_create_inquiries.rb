class CreateInquiries < ActiveRecord::Migration[5.2]
  def change
    create_table :inquiries, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      t.string :email
      t.string :name
      t.string :inquiry_title
      t.string :inquiry_body

      t.timestamps
    end
  end
end
