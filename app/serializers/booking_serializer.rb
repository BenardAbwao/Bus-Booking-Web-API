class BookingSerializer < ActiveModel::Serializer
  attributes :id, :seat_no
  belongs_to :customer, serializer: CustomerReturnedWithBookingSerializer
  belongs_to :bus, serializer: BusReturnedWithBookingSerializer
end
