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

ActiveRecord::Schema.define(version: 20150418195805) do

  create_table "toilets", force: :cascade do |t|
    t.string   "lat"
    t.string   "lng"
    t.string   "name"
    t.text     "description"
    t.string   "open_hours"
    t.string   "closing_hours"
    t.text     "open_closing_note"
    t.string   "managed_by"
    t.string   "type"
    t.string   "genders"
    t.integer  "no_of_toilets"
    t.integer  "no_of_bathrooms"
    t.integer  "no_of_urinals"
    t.boolean  "paid"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

end