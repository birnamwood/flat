class CreateEvaluates < ActiveRecord::Migration[5.2]
  def change
    create_table :evaluates do |t|
      t.integer :end_user_id
      t.integer :post_id
      t.integer :evaluate

      t.timestamps
    end
  end
end
