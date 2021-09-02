class Listing < ApplicationRecord
  validates_presence_of :title, :details, :date, :time
  belongs_to :user
end
