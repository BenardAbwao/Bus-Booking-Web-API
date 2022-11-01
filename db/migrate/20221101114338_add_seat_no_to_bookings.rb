class AddSeatNoToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :seat_no, :integer
  end
end
