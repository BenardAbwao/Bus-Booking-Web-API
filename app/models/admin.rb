class Admin < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :role, presence: true
  validates :password, presence: true
  has_secure_password
end
