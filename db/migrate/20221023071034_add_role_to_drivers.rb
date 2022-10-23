class AddRoleToDrivers < ActiveRecord::Migration[7.0]
  def change
    add_column :drivers, :role, :string
  end
end
