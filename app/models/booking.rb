class Booking < ApplicationRecord
  belongs_to :user
  #validates :email, uniqueness: { case_sensitive: false }
  #validates :username, uniqueness: { case_sensitive: false }
end
