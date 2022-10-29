class Driver < ApplicationRecord
  has_one :bus, dependent: :destroy
  has_secure_password
end
