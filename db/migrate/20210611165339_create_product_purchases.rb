class CreateProductPurchases < ActiveRecord::Migration[6.1]
  def change
    create_table :product_purchases do |t|
      t.float :amount
      t.date :date

      t.timestamps
    end
  end
end
