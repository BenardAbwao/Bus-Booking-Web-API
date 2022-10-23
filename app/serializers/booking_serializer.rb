class BookingSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :customer, serializer: CustomerReturnedWithBookingSerializer
  belongs_to :bus
end
