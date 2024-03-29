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

ActiveRecord::Schema.define(:version => 20111106220423) do

  create_table "characters", :force => true do |t|
    t.string   "name"
    t.integer  "race"
    t.integer  "gender"
    t.integer  "level"
    t.integer  "achievement_points"
    t.integer  "class_id"
    t.string   "thumbnail"
    t.integer  "last_activity"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "realm_id"
    t.integer  "guild_id"
  end

  create_table "guilds", :force => true do |t|
    t.string   "name"
    t.integer  "realm_id"
    t.integer  "level"
    t.integer  "side"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "realms", :force => true do |t|
    t.string   "name"
    t.string   "realm_type"
    t.string   "population"
    t.string   "battlegroup"
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
