class StylistCalendarSerializer < ActiveModel::Serializer
  attributes :id, :date, :start_time, :end_time

  has_one :stylist
  
end
