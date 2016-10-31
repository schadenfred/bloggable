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

ActiveRecord::Schema.define(version: 20161031071545) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bloggable_articles", force: :cascade do |t|
    t.string   "title"
    t.string   "slug"
    t.text     "text"
    t.integer  "author_id"
    t.integer  "bloggable_id"
    t.string   "bloggable_type"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["bloggable_id", "bloggable_type"], name: "bloggable", using: :btree
    t.index ["slug"], name: "index_bloggable_articles_on_slug", using: :btree
    t.index ["title"], name: "index_bloggable_articles_on_title", using: :btree
  end

  create_table "bloggable_comments", force: :cascade do |t|
    t.integer  "article_id"
    t.text     "text"
    t.integer  "commenter_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["commenter_id"], name: "index_bloggable_comments_on_commenter_id", using: :btree
  end

  create_table "orgs", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
