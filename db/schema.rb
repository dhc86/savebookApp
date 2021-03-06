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

ActiveRecord::Schema.define(version: 6) do

  create_table "books", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "title"
    t.string   "author"
    t.string   "description"
    t.string   "isbn"
    t.string   "picture_url", default: "http://i.imgur.com/Ibd6JdC.jpg"
    t.datetime "created_at",                                             null: false
    t.datetime "updated_at",                                             null: false
  end

  create_table "lends", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "book_id"
    t.integer  "borrower_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.date     "due"
    t.date     "checkin"
    t.date     "checkout"
  end

  create_table "requests", force: :cascade do |t|
    t.integer  "book_id"
    t.integer  "owner_id"
    t.integer  "borrower_id"
    t.boolean  "accepted",    default: false
    t.boolean  "attended_to", default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "book_id"
    t.integer  "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "text"
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password"
    t.string   "picture_url", default: "http://i.imgur.com/vUmohYJ.jpg"
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at",                                             null: false
    t.datetime "updated_at",                                             null: false
    t.integer  "points",      default: 100
  end

end
