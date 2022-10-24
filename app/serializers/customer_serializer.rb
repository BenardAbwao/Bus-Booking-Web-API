class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :role
end
