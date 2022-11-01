class Driver < ApplicationRecord
  has_one :bus, dependent: :destroy
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :role , presence: true
  validates :password, presence: true
  validates :name, presence: true
end
