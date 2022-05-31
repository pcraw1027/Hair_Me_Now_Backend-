class CreateSocialSites < ActiveRecord::Migration[6.1]
  def change
    create_table :social_sites do |t|
      t.string :site_name
      t.string :url
      t.references :stylist, null: false, foreign_key: true
      t.references :salon, null: false, foreign_key: true

      t.timestamps
    end
  end
end
