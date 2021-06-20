class Appointment < ApplicationRecord
    belongs_to :customer
    belongs_to :stylist
    belongs_to :price

    # has_one :appointmentcommentrating

    validates :date, :time, presence: {message: 'Date and Time required'}

    def self.requests_appointments(stylist_id)
        self.where("stylist_id = #{stylist_id}")
    end

    def appointment_customer
        first_name = self.customer.first_name
        last_name = self.customer.last_name
        full_name = first_name + " " + last_name
        return full_name
    end

    def appointment_style
        style_name = self.price.service.name
        return style_name
    end

    
end
