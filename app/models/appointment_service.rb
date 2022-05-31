class AppointmentService < ApplicationRecord
    belongs_to :appointment
    belongs_to :customer
end
