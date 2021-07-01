# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_06_11_170626) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointment_comment_ratings", force: :cascade do |t|
    t.integer "rating"
    t.text "comment"
    t.boolean "pinned"
    t.string "image"
    t.bigint "appointment_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["appointment_id"], name: "index_appointment_comment_ratings_on_appointment_id"
  end

  create_table "appointments", force: :cascade do |t|
    t.date "date"
    t.datetime "time"
    t.string "image"
    t.boolean "confirmed"
    t.boolean "completed"
    t.bigint "customer_id", null: false
    t.bigint "stylist_id", null: false
    t.bigint "price_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_appointments_on_customer_id"
    t.index ["price_id"], name: "index_appointments_on_price_id"
    t.index ["stylist_id"], name: "index_appointments_on_stylist_id"
  end

  create_table "chairs", force: :cascade do |t|
    t.integer "chair_num"
    t.bigint "stylist_id", null: false
    t.bigint "salon_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["salon_id"], name: "index_chairs_on_salon_id"
    t.index ["stylist_id"], name: "index_chairs_on_stylist_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "address_1"
    t.string "address_2"
    t.string "city"
    t.string "zip_code"
    t.string "gender"
    t.string "ethnicity"
    t.string "image"
    t.string "phone_num"
    t.string "email"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_customers_on_user_id"
  end

  create_table "prices", force: :cascade do |t|
    t.float "amount"
    t.string "image"
    t.string "url"
    t.boolean "current"
    t.text "comment"
    t.bigint "stylist_id", null: false
    t.bigint "service_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["service_id"], name: "index_prices_on_service_id"
    t.index ["stylist_id"], name: "index_prices_on_stylist_id"
  end

  create_table "product_purchases", force: :cascade do |t|
    t.float "amount"
    t.date "date"
    t.bigint "product_id", null: false
    t.bigint "stylist_id", null: false
    t.bigint "salon_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_product_purchases_on_product_id"
    t.index ["salon_id"], name: "index_product_purchases_on_salon_id"
    t.index ["stylist_id"], name: "index_product_purchases_on_stylist_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "qr_code"
    t.string "upc_code"
    t.string "corporation"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "purchase_comment_ratings", force: :cascade do |t|
    t.integer "rating"
    t.text "comment"
    t.boolean "pinned"
    t.string "image"
    t.bigint "product_purchase_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_purchase_id"], name: "index_purchase_comment_ratings_on_product_purchase_id"
  end

  create_table "salons", force: :cascade do |t|
    t.string "name"
    t.string "address_1"
    t.string "address_2"
    t.string "city"
    t.string "zip_code"
    t.string "gender_service"
    t.string "ethnicity_service"
    t.string "image"
    t.string "url"
    t.string "phone_num"
    t.string "email"
    t.bigint "stylist_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["stylist_id"], name: "index_salons_on_stylist_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stylists", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "address_1"
    t.string "address_2"
    t.string "city"
    t.string "state"
    t.string "zip_code"
    t.string "gender_service"
    t.string "ethnicity_service"
    t.string "image"
    t.string "url"
    t.string "phone_num"
    t.string "email"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_stylists_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "user_type"
    t.string "avatar"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "appointment_comment_ratings", "appointments"
  add_foreign_key "appointments", "customers"
  add_foreign_key "appointments", "prices"
  add_foreign_key "appointments", "stylists"
  add_foreign_key "chairs", "salons"
  add_foreign_key "chairs", "stylists"
  add_foreign_key "customers", "users"
  add_foreign_key "prices", "services"
  add_foreign_key "prices", "stylists"
  add_foreign_key "product_purchases", "products"
  add_foreign_key "product_purchases", "salons"
  add_foreign_key "product_purchases", "stylists"
  add_foreign_key "purchase_comment_ratings", "product_purchases"
  add_foreign_key "salons", "stylists"
  add_foreign_key "stylists", "users"
end
