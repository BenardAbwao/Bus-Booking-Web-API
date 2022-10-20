class CreateBuses < ActiveRecord::Migration[7.0]
  def change
    create_table :buses do |t|
      t.string :plate_number
      t.integer :no_of_seats
      t.integer :cost_per_seat
      t.string :from
      t.string :to
      t.datetime :time_of_travel
      t.integer :driver_id
      t.boolean :available

      t.timestamps
    end
  end
end
