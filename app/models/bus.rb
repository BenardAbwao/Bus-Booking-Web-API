class Bus < ApplicationRecord
  belongs_to :driver
  has_many :bookings
  has_many :customers, through: :bookings
  validates :plate_number, uniqueness: true
end
