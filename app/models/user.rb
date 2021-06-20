class User < ApplicationRecord
    has_secure_password
    
    has_one :customer
    has_one :stylist

    validates :username, :password, presence: true
    validates :username, :password, length: {minimum: 6}
    validates :username, uniqueness: {message: 'Username %(value) already exists'}

end
