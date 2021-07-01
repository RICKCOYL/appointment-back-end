class BookingSerializer < ActiveModel::Serializer
  attributes :id, :title, :date, :time, :details
  belongs_to :user
end
