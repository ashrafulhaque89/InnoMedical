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

ActiveRecord::Schema.define(version: 2019_06_05_121350) do

  create_table "doctors", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "phone"
    t.string "field"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "users_id"
    t.index ["users_id"], name: "index_doctors_on_users_id"
  end

  create_table "patient_histories", force: :cascade do |t|
    t.text "medical_history"
    t.string "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "patient_profile_id"
    t.index ["patient_profile_id"], name: "index_patient_histories_on_patient_profile_id"
  end

  create_table "patient_profiles", force: :cascade do |t|
    t.string "gender"
    t.string "ethnicity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_patient_profiles_on_user_id"
  end

  create_table "prescriptions", force: :cascade do |t|
    t.string "medicine_name"
    t.text "instructions"
    t.date "prescription_date"
    t.date "valid_until_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "doctor_id"
    t.integer "patient_profile_id"
    t.index ["doctor_id"], name: "index_prescriptions_on_doctor_id"
    t.index ["patient_profile_id"], name: "index_prescriptions_on_patient_profile_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role"
    t.string "firstname"
    t.string "lastname"
    t.string "phonenumber"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
