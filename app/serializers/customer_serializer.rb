class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :phone_number
end
