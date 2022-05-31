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

ActiveRecord::Schema.define(version: 2022_05_31_184218) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointment_reviews", force: :cascade do |t|
    t.integer "rating"
    t.text "comment"
    t.boolean "pinned"
    t.string "image"
    t.text "response"
    t.bigint "appointment_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["appointment_id"], name: "index_appointment_reviews_on_appointment_id"
  end

  create_table "appointment_services", force: :cascade do |t|
    t.bigint "service_id", null: false
    t.bigint "stylist_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["service_id"], name: "index_appointment_services_on_service_id"
    t.index ["stylist_id"], name: "index_appointment_services_on_stylist_id"
  end

  create_table "appointments", force: :cascade do |t|
    t.string "name"
    t.date "date"
    t.datetime "time"
    t.string "image"
    t.boolean "confirmed"
    t.boolean "completed"
    t.float "actual_price"
    t.bigint "customer_id", null: false
    t.bigint "stylist_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_appointments_on_customer_id"
    t.index ["stylist_id"], name: "index_appointments_on_stylist_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "user_type"
    t.string "avatar"
    t.string "nick_name"
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
    t.date "date_of_birth"
    t.text "notes"
    t.string "origin"
    t.string "email"
    t.integer "veri_stage"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
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
    t.string "product_type"
    t.string "brand"
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
    t.date "date"
    t.bigint "stylist_id", null: false
    t.bigint "salon_id", null: false
    t.bigint "product_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_purchase_comment_ratings_on_product_id"
    t.index ["salon_id"], name: "index_purchase_comment_ratings_on_salon_id"
    t.index ["stylist_id"], name: "index_purchase_comment_ratings_on_stylist_id"
  end

  create_table "salons", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "password_digest"
    t.string "user_type"
    t.string "avatar"
    t.string "nick_name"
    t.string "address_1"
    t.string "address_2"
    t.string "city"
    t.string "zip_code"
    t.string "gender_service"
    t.string "ethnicity_service"
    t.string "image"
    t.string "url"
    t.string "phone_num"
    t.date "date_established"
    t.string "origin"
    t.integer "veri_stage"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "services", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.float "price"
    t.boolean "is_min_price"
    t.integer "duration"
    t.string "image"
    t.boolean "current"
    t.boolean "pinned"
    t.bigint "stylist_id", null: false
    t.bigint "salon_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["salon_id"], name: "index_services_on_salon_id"
    t.index ["stylist_id"], name: "index_services_on_stylist_id"
  end

  create_table "social_sites", force: :cascade do |t|
    t.string "site_name"
    t.string "url"
    t.bigint "stylist_id", null: false
    t.bigint "salon_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["salon_id"], name: "index_social_sites_on_salon_id"
    t.index ["stylist_id"], name: "index_social_sites_on_stylist_id"
  end

  create_table "stylist_availabilities", force: :cascade do |t|
    t.string "day"
    t.datetime "start_time"
    t.datetime "end_time"
    t.bigint "stylist_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["stylist_id"], name: "index_stylist_availabilities_on_stylist_id"
  end

  create_table "stylist_calendars", force: :cascade do |t|
    t.string "date"
    t.datetime "start_time"
    t.datetime "end_time"
    t.bigint "stylist_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["stylist_id"], name: "index_stylist_calendars_on_stylist_id"
  end

  create_table "stylists", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "user_type"
    t.string "avatar"
    t.string "business_name"
    t.string "nick_name"
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
    t.string "phone_num"
    t.date "date_of_birth"
    t.text "notes"
    t.string "origin"
    t.string "cancellation_policy"
    t.string "role"
    t.string "email"
    t.integer "veri_stage"
    t.bigint "salon_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["salon_id"], name: "index_stylists_on_salon_id"
  end

  add_foreign_key "appointment_reviews", "appointments"
  add_foreign_key "appointment_services", "services"
  add_foreign_key "appointment_services", "stylists"
  add_foreign_key "appointments", "customers"
  add_foreign_key "appointments", "stylists"
  add_foreign_key "product_purchases", "products"
  add_foreign_key "product_purchases", "salons"
  add_foreign_key "product_purchases", "stylists"
  add_foreign_key "purchase_comment_ratings", "products"
  add_foreign_key "purchase_comment_ratings", "salons"
  add_foreign_key "purchase_comment_ratings", "stylists"
  add_foreign_key "social_sites", "salons"
  add_foreign_key "social_sites", "stylists"
  add_foreign_key "stylist_availabilities", "stylists"
  add_foreign_key "stylist_calendars", "stylists"
end
