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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120414125157) do

  create_table "accomodations", :force => true do |t|
    t.string   "property_type"
    t.integer  "accomodates"
    t.string   "accomodation_type"
    t.integer  "nightly_rate"
    t.string   "adress_line"
    t.string   "country"
    t.string   "city"
    t.integer  "zip_code"
    t.string   "contact_email"
    t.integer  "contact_phone"
    t.integer  "contact_phone2"
    t.boolean  "pets_allowed"
    t.integer  "size"
    t.integer  "number_of_bathrooms"
    t.integer  "number_of_bedrooms"
    t.string   "number_of_beds"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
    t.string   "main_image_file_name"
    t.string   "main_image_content_type"
    t.integer  "main_image_file_size"
    t.datetime "main_image_updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "email"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           :default => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
