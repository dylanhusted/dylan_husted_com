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

ActiveRecord::Schema.define(version: 20150612191328) do

  create_table "startups", force: true do |t|
    t.string   "name"
    t.string   "bio"
    t.text     "description"
    t.string   "website"
    t.text     "links"
    t.string   "full_logo"
    t.string   "square_logo"
    t.string   "stage"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "role"
  end

  add_index "startups", ["stage"], name: "index_startups_on_stage"

end
