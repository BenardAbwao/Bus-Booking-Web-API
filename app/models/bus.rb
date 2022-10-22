class Bus < ApplicationRecord
  belongs_to :driver
  has_many :bookings
end
