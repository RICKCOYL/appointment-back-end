class User < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_secure_password
  validates_presence_of :username, :email
end
