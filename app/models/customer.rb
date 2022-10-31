class Customer < ApplicationRecord
  has_many :bookings
  has_many :buses, through: :bookings
  has_many :drivers, through: :buses
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :role , presence: true
  validates :password, presence: true
  validates :name, presence: true
end
