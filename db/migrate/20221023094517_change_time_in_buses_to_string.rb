class ChangeTimeInBusesToString < ActiveRecord::Migration[7.0]
  def change
    change_column :buses, :travel_time, :string
  end
end
