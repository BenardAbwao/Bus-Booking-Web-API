class AddEmailToDrivers < ActiveRecord::Migration[7.0]
  def change
    add_column :drivers, :email, :string
  end
end
