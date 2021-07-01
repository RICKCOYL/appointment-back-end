class User < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_secure_password
  validates_presence_of :username, :email
  validates :email, uniqueness: { case_sensitive: false }
  validates :username, uniqueness: { case_sensitive: false }
end
