class ProductPurchase < ApplicationRecord
    belongs_to :product
    belongs_to :stylist
    belongs_to :salon
end
