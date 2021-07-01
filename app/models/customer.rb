class Customer < ApplicationRecord
    belongs_to :user

    has_many :appointments
    has_many :stylists, through: :appointments

    validates :first_name, :last_name, presence: true
    validates :first_name, :last_name, length: {minimum: 2}
    validates :phone_num, presence: {message: 'Must have a phone number or email'}, unless: :email
    validates :email, presence: {message: 'Must have an email or phone number'}, unless: :phone_num

    def customer_appointments
        self.appointments
    end
end
