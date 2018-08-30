class AddDistrictToHomes < ActiveRecord::Migration[5.2]
  def change
    add_column :homes, :district, :string
  end
end
