class UrgentListingSerializer < ActiveModel::Serializer
  attributes :id, :title, :time, :date, :details
  has_one :user
end
