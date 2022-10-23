class AdminSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :role
end
