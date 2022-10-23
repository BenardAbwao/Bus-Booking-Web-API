class Driver < ApplicationRecord
  has_one :bus
  has_many :customers
  has_secure_password
end
