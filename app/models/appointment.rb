class Appointment < ApplicationRecord
    belongs_to :customer
    belongs_to :stylist
    belongs_to :price

    has_one :appointmentcommentrating

    validates :date, :time, presence: {message: 'Date and Time required'}
end
