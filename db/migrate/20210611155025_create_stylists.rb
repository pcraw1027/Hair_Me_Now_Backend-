class CreateStylists < ActiveRecord::Migration[6.1]
  def change
    create_table :stylists do |t|
      t.string :first_name
      t.string :last_name
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :zip_code
      t.string :gender_service
      t.string :ethnicity_service
      t.string :image
      t.string :url
      t.string :phone_num
      t.string :email
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
