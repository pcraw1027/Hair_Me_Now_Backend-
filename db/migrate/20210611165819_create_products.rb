class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text   :description
      t.string :product_type
      t.string :brand
      t.string :qr_code
      t.string :upc_code
      t.string :corporation

      t.timestamps
    end
  end
end
