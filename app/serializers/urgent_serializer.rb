class UrgentSerializer < ActiveModel::Serializer
  attributes :id, :title, :date, :time, :details
end
