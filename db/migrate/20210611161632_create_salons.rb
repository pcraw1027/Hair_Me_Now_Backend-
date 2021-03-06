class CreateSalons < ActiveRecord::Migration[6.1]
  def change
    create_table :salons do |t|
      t.string :name
      t.string :username
      t.string :password_digest
      t.string :user_type
      t.string :avatar
      t.string :nick_name
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :zip_code
      t.string :gender_service
      t.string :ethnicity_service
      t.string :image
      t.string :url
      t.string :phone_num
      t.date   :date_established
      t.string :origin
      t.integer :veri_stage
      t.string :email
      #t.references :stylist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
