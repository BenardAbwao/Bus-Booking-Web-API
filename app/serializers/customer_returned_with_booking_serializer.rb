class CustomerReturnedWithBookingSerializer < ActiveModel::Serializer
  attributes :name, :phone_number, :email
end
