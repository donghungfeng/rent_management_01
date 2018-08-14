class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :room, foreign_key: true
      t.integer :owner_id
      t.integer :customer_id
      t.date :date_start
      t.string :date_end
      t.string :date
      t.string :state
      t.string :description

      t.timestamps
    end
  end
end
