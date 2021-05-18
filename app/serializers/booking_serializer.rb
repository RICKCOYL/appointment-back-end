class BookingSerializer < ActiveModel::Serializer
  attributes :id, :title, :date, :time, :details
  has_one :user
end
