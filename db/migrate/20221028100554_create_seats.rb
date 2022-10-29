class CreateSeats < ActiveRecord::Migration[7.0]
  def change
    create_table :seats do |t|
      t.integer :bus_id
      t.boolean :is_booked
      t.integer :seat_no

      t.timestamps
    end
  end
end
