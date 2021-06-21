class User < ApplicationRecord
    has_secure_password
    
    has_one :customer
    has_one :stylist

    validates :username, :password, presence: true
    validates :username, :password, length: {minimum: 6}
    validates :username, uniqueness: {message: 'Username %(value) already exists'}

    def user_prices
        self.stylist.prices
    end

    # def user_customers
    #     self.stylist.appointments.customers
    # end

    def user_appointments
        self.stylist.appointments
    end


end
