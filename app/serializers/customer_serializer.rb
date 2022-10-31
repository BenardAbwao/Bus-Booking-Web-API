class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :role, :phone_number
end
