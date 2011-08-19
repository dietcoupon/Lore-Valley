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

ActiveRecord::Schema.define(:version => 20110819002520) do

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "image_url"
    t.integer  "placement"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "occupants", :force => true do |t|
    t.string   "alias"
    t.integer  "current_location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password"
    t.string   "email"
    t.string   "alias"
    t.integer  "race"
    t.integer  "class"
    t.boolean  "sex"
    t.boolean  "preference"
    t.integer  "alignment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
