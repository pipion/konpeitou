# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160205153655) do

  create_table "care_records", force: :cascade do |t|
    t.date     "day"
    t.time     "arrive_time"
    t.time     "leave_time"
    t.string   "blood_pressure"
    t.string   "pulse"
    t.decimal  "temperature"
    t.string   "medichine"
    t.string   "treatment"
    t.string   "dietary_intake"
    t.string   "water_intake"
    t.string   "gait_training"
    t.integer  "distance"
    t.string   "toilet"
    t.string   "stretch"
    t.string   "oral_stretch"
    t.string   "recreation"
    t.string   "act"
    t.string   "detachable"
    t.string   "training"
    t.string   "walking"
    t.string   "rec_name"
    t.string   "bathing"
    t.integer  "meal_size"
    t.text     "contact"
    t.text     "opinion"
    t.integer  "customer_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "status"
    t.integer  "staff_id"
  end

  add_index "care_records", ["customer_id"], name: "index_care_records_on_customer_id"

  create_table "caremanagers", force: :cascade do |t|
    t.string   "name"
    t.string   "name_kana"
    t.string   "sex"
    t.date     "birth"
    t.integer  "age"
    t.string   "postal_code"
    t.text     "address"
    t.string   "phone_num"
    t.string   "mail"
    t.string   "company"
    t.integer  "status"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "certifications", force: :cascade do |t|
    t.string   "insure"
    t.string   "classification"
    t.date     "certification"
    t.date     "expiration"
    t.string   "level"
    t.string   "unit"
    t.integer  "customer_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "cus_families", force: :cascade do |t|
    t.string   "name"
    t.string   "relation"
    t.string   "living"
    t.text     "address"
    t.string   "contact"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "customer_id"
  end

  create_table "customers", force: :cascade do |t|
    t.integer  "insure_num"
    t.string   "name"
    t.string   "name_kana"
    t.string   "sex"
    t.date     "birth"
    t.string   "postal_code"
    t.text     "address"
    t.string   "home_num"
    t.string   "phone_num"
    t.string   "fax"
    t.string   "mail"
    t.date     "reception_day"
    t.text     "history_of_consul"
    t.text     "demand"
    t.string   "household"
    t.text     "family_situation"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "status"
    t.integer  "caremanager_id"
    t.string   "image"
  end

  create_table "staffs", force: :cascade do |t|
    t.string   "name"
    t.string   "name_kana"
    t.string   "sex"
    t.date     "birth"
    t.integer  "age"
    t.string   "postal_code"
    t.text     "address"
    t.string   "phone_num"
    t.string   "home_num"
    t.string   "mail"
    t.string   "role"
    t.integer  "status"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "name"
    t.boolean  "admin",                  default: false, null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
