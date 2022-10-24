class AdminSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :role, :phone_number
end
