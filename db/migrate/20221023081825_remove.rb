class Remove < ActiveRecord::Migration[7.0]
  def change
    remove_column :buses, :time_of_travel
  end
end
