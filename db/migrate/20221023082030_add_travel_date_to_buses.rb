class AddTravelDateToBuses < ActiveRecord::Migration[7.0]
  def change
    add_column :buses, :travel_date, :date
  end
end
