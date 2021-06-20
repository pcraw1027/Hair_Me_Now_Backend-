class Price < ApplicationRecord
    belongs_to :stylist
    belongs_to :service

    has_many :appointments

    validates :amount, numericality: {message: 'The value must be a valid price e.g. $9.99'}

    def self.stylist_prices(stylist_id)
        self.where("stylist_id = #{stylist_id}")
    end

    def price_style
        style_name = self.service.name
        return style_name
    end
end
