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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20160125183134) do
=======
ActiveRecord::Schema.define(version: 20160122202448) do
>>>>>>> 658ecd5e1ad63e95059d69ff0864fde30ffb9f78

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
<<<<<<< HEAD
    t.integer  "student_id"
=======
>>>>>>> 658ecd5e1ad63e95059d69ff0864fde30ffb9f78
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
