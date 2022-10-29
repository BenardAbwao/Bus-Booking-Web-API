class Bus < ApplicationRecord
  belongs_to :driver
  has_many :seats, dependent: :destroy
  has_many :bookings, through: :seats
  validates :plate_number, uniqueness: true
end
