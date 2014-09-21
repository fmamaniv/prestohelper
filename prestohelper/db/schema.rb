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

ActiveRecord::Schema.define(version: 20140921061208) do

  create_table "categories", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", force: true do |t|
    t.datetime "creation_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "forums", force: true do |t|
    t.boolean  "colaborator_status"
    t.integer  "stars"
    t.integer  "reviews"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "forumthreads", force: true do |t|
    t.string   "title"
    t.string   "body"
    t.boolean  "post_private"
    t.datetime "creation_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "helpers", force: true do |t|
    t.datetime "creation_date"
    t.string   "information"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: true do |t|
    t.string   "message"
    t.datetime "creation_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "settings", force: true do |t|
    t.string   "name"
    t.string   "value"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "userfacebooks", force: true do |t|
    t.string   "facebook_uid"
    t.string   "access_token"
    t.string   "faceboook_page"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "userreviews", force: true do |t|
    t.integer  "rating"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password"
    t.date     "birthdate"
    t.datetime "last_login"
    t.datetime "last_update"
    t.string   "gender"
    t.decimal  "latitude",    precision: 10, scale: 0
    t.decimal  "longitude",   precision: 10, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
