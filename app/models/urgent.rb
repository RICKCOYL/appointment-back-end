class Urgent < ApplicationRecord
  validates_presence_of :title, :time, :date, :details
end
