class SeatSerializer < ActiveModel::Serializer
  attributes :id, :bus_id, :is_booked, :seat_no
  belongs_to :bus
end
