class DriverSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :role
  has_one :bus
end
