class Driver < ApplicationRecord
  has_one :bus
  has_secure_password
end
