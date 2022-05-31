class User < ApplicationRecord
    has_secure_password
    
    #has_one :customer
    #has_one :stylist

    validates :username, :password, presence: true
    validates :username, :password, length: {minimum: 6}
    validates :username, uniqueness: {message: 'Username %(value) already exists'}

    def user_prices
        self.stylist.prices
    end

    # def user_customers
    #     self.stylist.appointments.customers
    # end

    def user_stylist_appointments
        self.stylist.appointments
    end

    def user_customer_appointments
        self.customer.appointments
    end

    def user_stylist
        self.stylist
    end

    def user_customer
        self.customer
    end


end
