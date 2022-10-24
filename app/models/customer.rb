class Customer < ApplicationRecord
  has_many :bookings
  has_many :buses, through: :bookings
  has_many :drivers, through: :buses
  has_secure_password
end
