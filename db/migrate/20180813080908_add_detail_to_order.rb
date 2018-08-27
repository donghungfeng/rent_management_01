class AddDetailToOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :number_person, :integer
    add_column :orders, :number_bike, :integer
    add_column :orders, :number_motobike, :integer
  end
end
