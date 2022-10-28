class DriverSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :role, :phone_number
  has_one :bus
end
