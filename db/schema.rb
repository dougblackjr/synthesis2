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

ActiveRecord::Schema.define(version: 20160724155705) do

  create_table "admissions", force: :cascade do |t|
    t.boolean  "active"
    t.date     "admissionDate"
    t.string   "admissionStatus"
    t.integer  "bed_id"
    t.boolean  "blackout"
    t.date     "blackoutDate"
    t.date     "closeDate"
    t.string   "closeReason"
    t.string   "locker"
    t.string   "module"
    t.integer  "program_id"
    t.string   "referralSource"
    t.string   "referralReason"
    t.integer  "resident_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "admissions", ["bed_id"], name: "index_admissions_on_bed_id"
  add_index "admissions", ["program_id"], name: "index_admissions_on_program_id"
  add_index "admissions", ["resident_id"], name: "index_admissions_on_resident_id"

  create_table "beds", force: :cascade do |t|
    t.integer  "bedNumber"
    t.integer  "place_id"
    t.string   "bedLocation"
    t.boolean  "occupied"
    t.integer  "resident_id"
    t.string   "bedNotes"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "beds", ["place_id"], name: "index_beds_on_place_id"
  add_index "beds", ["resident_id"], name: "index_beds_on_resident_id"

  create_table "demographics", force: :cascade do |t|
    t.integer  "resident_id"
    t.string   "address"
    t.string   "city"
    t.string   "zip"
    t.string   "state"
    t.string   "phoneNumber"
    t.string   "gender"
    t.string   "race"
    t.string   "ethnicity"
    t.string   "aliases"
    t.string   "veteranStatus"
    t.string   "primaryLanguage"
    t.string   "otherLanguagesSpoken"
    t.string   "maritalStatus"
    t.string   "nameOfSignificantOther"
    t.string   "listOfChildren"
    t.integer  "drug_id"
    t.string   "drugsUsed"
    t.string   "descriptionOfLastUse"
    t.date     "dateOfLastUse"
    t.float    "incomeAmount"
    t.string   "incomeDescription"
    t.string   "probationParole"
    t.string   "socialWorker"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "demographics", ["drug_id"], name: "index_demographics_on_drug_id"
  add_index "demographics", ["resident_id"], name: "index_demographics_on_resident_id"

  create_table "drugs", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.boolean  "standardtest"
    t.integer  "standardDetectionTime"
    t.integer  "maxDetectionTime"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "lockers", force: :cascade do |t|
    t.integer  "lockerNumber"
    t.string   "lockerCombo"
    t.boolean  "inUse"
    t.integer  "resident_id"
    t.string   "lockerNotes"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "lockers", ["resident_id"], name: "index_lockers_on_resident_id"

  create_table "places", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "zip"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "programs", force: :cascade do |t|
    t.string   "name"
    t.integer  "place_id"
    t.string   "programType"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "programs", ["place_id"], name: "index_programs_on_place_id"

  create_table "residents", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.date     "dob"
    t.string   "ssn"
    t.string   "picture"
    t.boolean  "has_active_admission"
    t.boolean  "restricted"
    t.integer  "place_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "residents", ["place_id"], name: "index_residents_on_place_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
