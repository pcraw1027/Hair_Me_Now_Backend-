class CreatePurchaseReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :purchase_comment_ratings do |t|
      t.integer :rating
      t.text    :comment
      t.boolean :pinned
      t.string  :image
      t.date    :date
      #t.references :product_purchase, null: false, foreign_key: true
      t.references :stylist, null: false, foreign_key: true
      t.references :salon, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
