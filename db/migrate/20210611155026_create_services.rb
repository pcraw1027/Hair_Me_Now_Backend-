class CreateServices < ActiveRecord::Migration[6.1]
  def change
    create_table :services do |t|
      t.string   :title
      t.text     :description
      t.float    :price
      t.boolean  :is_min_price
      t.integer  :duration
      t.string   :image
      t.boolean  :current
      t.boolean  :pinned
      t.references :stylist, null: false, foriegn_key: true
      t.references :salon, null: false, foriegn_key: true

      t.timestamps
    end
  end
end
