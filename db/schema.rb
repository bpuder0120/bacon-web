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

ActiveRecord::Schema.define(version: 20140412233059) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "goals", force: true do |t|
    t.string   "name"
    t.integer  "amount",     null: false
    t.string   "image_url"
    t.datetime "due_date"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "initial_users", force: true do |t|
    t.string "email"
  end

  create_table "transactions", force: true do |t|
    t.float   "amount"
    t.string  "item"
    t.integer "goal_id"
    t.integer "user_id"
  end

  create_table "users", force: true do |t|
    t.string   "first_name",   null: false
    t.string   "last_name",    null: false
    t.string   "photo_url"
    t.integer  "age"
    t.string   "email"
    t.string   "access_token", null: false
    t.string   "uid",          null: false
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
