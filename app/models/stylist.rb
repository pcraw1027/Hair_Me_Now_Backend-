class Stylist < ApplicationRecord
    belongs_to :user

    has_many :appointments
    has_many :prices
    has_many :customers, through: :appointments
    has_many :productpurchases

    has_one :chair

    validates :first_name, :last_name, :address_1, :city, :zip_code, presence: true
    validates :first_name, :last_name, length: {minimum: 2}
    validates :phone_num, presence: {message: 'Must have a phone number or email'}, unless: :email
    validates :email, presence: {message: 'Must have an email or phone number'}, unless: :phone_num
end
