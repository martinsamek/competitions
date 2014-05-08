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

ActiveRecord::Schema.define(version: 20140508120643) do

  create_table "competition_assignments", force: true do |t|
    t.integer "user_id"
    t.integer "school_id"
    t.integer "competition_id"
    t.integer "user_grade"
    t.string  "teacher_name",   limit: 100
  end

  create_table "competitions", force: true do |t|
    t.string "name", limit: 100
  end

  create_table "competitions_maintainers", id: false, force: true do |t|
    t.integer "maintainer_id"
    t.integer "competition_id"
  end

  create_table "schools", force: true do |t|
    t.string  "name",        limit: 50
    t.string  "phone",       limit: 20
    t.string  "residence",   limit: 150
    t.string  "email",       limit: 100
    t.integer "school_type"
  end

  create_table "schools_maintainers", id: false, force: true do |t|
    t.integer "maintainer_id"
    t.integer "school_id"
  end

  create_table "users", force: true do |t|
    t.string   "email",           limit: 100
    t.string   "password_digest", limit: 100
    t.boolean  "admin"
    t.string   "first_name",      limit: 100
    t.string   "last_name",       limit: 100
    t.date     "birthday"
    t.string   "phone",           limit: 20
    t.string   "residence",       limit: 150
    t.string   "id_card_number",  limit: 15
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
