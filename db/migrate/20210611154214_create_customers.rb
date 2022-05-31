class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :username
      t.string :password_digest
      t.string :user_type
      t.string :avatar
      t.string :nick_name
      t.string :first_name
      t.string :last_name
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :zip_code
      t.string :gender
      t.string :ethnicity
      t.string :image
      t.string :phone_num
      t.date   :date_of_birth
      t.text   :notes
      t.string :origin
      t.string :email
      t.integer :veri_stage
#      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
