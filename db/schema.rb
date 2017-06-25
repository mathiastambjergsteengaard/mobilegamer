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

ActiveRecord::Schema.define(version: 20170625160318) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "games", force: :cascade do |t|
    t.string  "name"
    t.string  "url_name"
    t.text    "review"
    t.string  "youtube_url"
    t.string  "meta_title"
    t.string  "meta_description"
    t.boolean "online",                 default: true
    t.string  "android_download_links"
    t.string  "ios_download_links"
    t.string  "genre"
  end

  create_table "games_tags", force: :cascade do |t|
    t.integer "game_id"
    t.integer "tag_id"
  end

  add_index "games_tags", ["game_id"], name: "index_games_tags_on_game_id", using: :btree
  add_index "games_tags", ["tag_id"], name: "index_games_tags_on_tag_id", using: :btree

  create_table "tags", force: :cascade do |t|
    t.string "name"
  end

end
