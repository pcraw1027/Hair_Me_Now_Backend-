class Service < ApplicationRecord
    belongs_to  :stylist
    belongs_to  :salon

    has_many  :appointmentservices

    validates :title, :description, presence: true
    validates :title, :description, length: {minimum: 5, message: 'Name and Description must be at least 5 characters long'}
end
