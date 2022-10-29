class Seat < ApplicationRecord
  belongs_to :bus
  validates :bus_id, presence:true
  validates :seat_no, presence:true
end
