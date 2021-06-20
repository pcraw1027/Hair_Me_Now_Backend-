class CreateProductPurchases < ActiveRecord::Migration[6.1]
  def change
    create_table :product_purchases do |t|
      t.float :amount
      t.date :date
      t.references :product, null: false, foreign_key: true
      t.references :stylist, null: false, foreign_key: true
      t.references :salon, null: false, foreign_key: true

      t.timestamps
    end
  end
end
