class AddTravelTimeToBuses < ActiveRecord::Migration[7.0]
  def change
    add_column :buses, :travel_time, :time 
  end
end
