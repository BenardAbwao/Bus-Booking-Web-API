class BookingSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :customer
  belongs_to :bus
end
