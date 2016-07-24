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

ActiveRecord::Schema.define(version: 20160724140934) do

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

end
