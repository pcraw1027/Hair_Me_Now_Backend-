class Stylist < ApplicationRecord
    #belongs_to :user

    has_many :appointments
    has_many :services
    has_many :customers, through: :appointments
    has_many :productpurchases
    has_many :productreviews
    has_many :socialsites
    has_many :stylistavailabilities
    has_many :stylistcalendars

    # has_one :chair

    validates :first_name, :last_name, :address_1, :city, :zip_code, presence: true
    validates :first_name, :last_name, length: {minimum: 2}
    validates :phone_num, presence: {message: 'Must have a phone number or email'}, unless: :email
    validates :email, presence: {message: 'Must have an email or phone number'}, unless: :phone_num

    #def self.stylist_user(user_id)
    #    Stylist.where("user_id = #{user_id}")
    #end

    #def stylist_prices
    #    self.prices
    #end

    def stylist_appointments
        self.appointments
    end
end
