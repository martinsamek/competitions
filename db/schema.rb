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

ActiveRecord::Schema.define(version: 20140426195006) do

  create_table "articles", force: true do |t|
    t.string   "name"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "competition_assigments", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "school_id"
    t.integer  "user_grade"
    t.string   "teacher_name"
    t.integer  "competition_id"
  end

  add_index "competition_assigments", ["competition_id"], name: "index_competition_assigments_on_competition_id"
  add_index "competition_assigments", ["school_id"], name: "index_competition_assigments_on_school_id"
  add_index "competition_assigments", ["user_id"], name: "index_competition_assigments_on_user_id"

  create_table "competition_maintainers", id: false, force: true do |t|
    t.integer "maintainer_id"
    t.integer "competition_id"
  end

  add_index "competition_maintainers", ["competition_id"], name: "index_competition_maintainers_on_competition_id"

  create_table "competitions", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schools", force: true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "residence"
    t.string   "email"
    t.string   "school_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schools_maintainers", id: false, force: true do |t|
    t.integer "school_id"
    t.integer "maintainer_id"
  end

  add_index "schools_maintainers", ["maintainer_id"], name: "index_schools_maintainers_on_maintainer_id"

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.date     "birthday"
    t.string   "phone"
    t.string   "residence"
    t.string   "admin"
    t.string   "id_card_number"
  end

end
