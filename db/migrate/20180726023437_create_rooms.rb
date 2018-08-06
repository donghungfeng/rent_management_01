class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.string :name
      t.integer :area
      t.integer :number_room
      t.string :state

      t.timestamps
    end
  end
end
