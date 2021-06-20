class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :date, :time, :image, :confirmed, :completed, :appointment_customer, :appointment_style

  belongs_to :customer
  belongs_to :stylist
  belongs_to :price

  # has_one :appointmentcommentrating
end
