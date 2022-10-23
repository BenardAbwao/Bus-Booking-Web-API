class Bus < ApplicationRecord
  belongs_to :driver
  has_many :bookings
  validates :plate_number, uniqueness: true
end
