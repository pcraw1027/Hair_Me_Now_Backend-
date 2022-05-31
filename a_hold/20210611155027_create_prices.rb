class CreatePrices < ActiveRecord::Migration[6.1]
  def change
    create_table :prices do |t|
      t.float :amount
      t.string :image
      t.string :url
      t.boolean :current
      t.text :comment
      t.references :stylist, null: false, foreign_key: true
      t.references :service, null: false, foreign_key: true

      t.timestamps
    end
  end
end
