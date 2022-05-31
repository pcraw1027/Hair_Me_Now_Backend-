class StylistAvailabilitySerializer < ActiveModel::Serializer
  attributes :id, :day, :start_time, :end_time

  has_one :stylist

end
