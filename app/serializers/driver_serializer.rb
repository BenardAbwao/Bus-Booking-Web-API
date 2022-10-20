class DriverSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one: bus
end
