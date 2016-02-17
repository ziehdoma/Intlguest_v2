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

ActiveRecord::Schema.define(version: 20160204214058) do

  create_table "families", force: :cascade do |t|
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
    t.string   "provider"
    t.string   "uid"
  end

  add_index "families", ["email"], name: "index_families_on_email", unique: true
  add_index "families", ["reset_password_token"], name: "index_families_on_reset_password_token", unique: true

  create_table "familyprofiles", force: :cascade do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "town"
    t.integer  "zipcode"
    t.string   "state"
    t.text     "bio"
    t.boolean  "pets"
    t.string   "pet_desc"
    t.boolean  "children"
    t.string   "phone"
    t.boolean  "smokers"
    t.boolean  "smoking_allowed"
    t.string   "room_type"
    t.string   "duration_value"
    t.string   "duration"
    t.string   "num_to_host"
    t.boolean  "meals"
    t.integer  "family_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.boolean  "availability"
  end

  create_table "reviews", force: :cascade do |t|
    t.text     "body"
    t.integer  "studentprofile_id"
    t.integer  "familyprofile_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "reviews", ["familyprofile_id"], name: "index_reviews_on_familyprofile_id"
  add_index "reviews", ["studentprofile_id"], name: "index_reviews_on_studentprofile_id"

  create_table "studentprofiles", force: :cascade do |t|
    t.string   "fname"
    t.string   "lname"
    t.text     "bio"
    t.string   "university"
    t.integer  "zipcode"
    t.string   "planguage"
    t.string   "slanguage"
    t.boolean  "smoker"
    t.boolean  "allergies"
    t.text     "all_desc"
    t.datetime "startduration"
    t.datetime "endduration"
    t.string   "phone"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "student_id"
  end

  create_table "students", force: :cascade do |t|
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

  add_index "students", ["email"], name: "index_students_on_email", unique: true
  add_index "students", ["reset_password_token"], name: "index_students_on_reset_password_token", unique: true

end
