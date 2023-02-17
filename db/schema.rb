# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_02_17_003147) do
  create_table "bookmarks", force: :cascade do |t|
    t.integer "User_id", null: false
    t.integer "Listing_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Listing_id"], name: "index_bookmarks_on_Listing_id"
    t.index ["User_id"], name: "index_bookmarks_on_User_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories_listings", force: :cascade do |t|
    t.integer "Category_id", null: false
    t.integer "Listing_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Category_id"], name: "index_categories_listings_on_Category_id"
    t.index ["Listing_id"], name: "index_categories_listings_on_Listing_id"
  end

  create_table "listings", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.string "img_path"
    t.integer "User_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["User_id"], name: "index_listings_on_User_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "bookmarks", "Listings"
  add_foreign_key "bookmarks", "Users"
  add_foreign_key "categories_listings", "Categories"
  add_foreign_key "categories_listings", "Listings"
  add_foreign_key "listings", "Users"
end
